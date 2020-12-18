*** Settings ***
Library           ../Library/RFCommonLibrary/
Library           String
Library           Collections
Library           Selenium2Library
Resource          业务参数.robot
Resource          程序功能.robot
Resource          校验功能.robot
Resource          配置初始化.robot

*** Keywords ***
获取Eddid_id
    [Arguments]    ${phone_num}=${new_phone_num}
    ${intercept_phone_num}    Get Substring    ${phone_num}    -11
    ${res_sql}    查询数据库    select t.eddid_id from eddid_account t where t.mobile='${intercept_phone_num}'
    ${eddid_id}    Search Dic KV    ${res_sql}    eddid_id
    Should Not Be Equal    ${eddid_id}    ${None}
    [Return]    ${eddid_id}

获取短信验证码-MongoDB
    [Arguments]    ${phone_num}=${new_phone_num}    ${device_id}=${new_device_id}
    [Documentation]    不填写入参时，默认会送随机的手机号码和随机的设备ID
    发送短信验证码    ${phone_num}    ${device_id}
    ${data}    Create Dictionary    phoneNumbers=${phone_num}
    ${sms_code}    getSmsCode    ${data}
    [Return]    ${sms_code}

获取短信验证码-MySQL
    [Arguments]    ${phone_num}=${new_phone_num}    ${device_id}=${new_device_id}
    [Documentation]    不填写入参时，默认会送随机的手机号码和随机的设备ID
    发送短信验证码    ${phone_num}    ${device_id}
    ${intercept_phone_num}    Get Substring    ${phone_num}    -11
    ${result}    查询数据库    SELECT metadata FROM message_push_qa.push_message WHERE receiver LIKE '%${intercept_phone_num}%' ORDER BY last_modified_date DESC LIMIT 1;
    ${metadata}    searchDicKV    ${result}    metadata
    ${metadata_dict}    Json Loads    ${metadata}
    ${templateParam}    searchDicKV    ${metadata_dict}    templateParam
    ${sms_code}    searchDicKV    ${templateParam}    sms_auth_code
    [Return]    ${sms_code}

发送短信验证码
    [Arguments]    ${phone_num}=${new_phone_num}    ${device_id}=${new_device_id}
    [Documentation]    不填写入参时，默认会送随机的手机号码和随机的设备ID
    ${header}    create dictionary    Content-Type=application/json    Authorization=&{auth}[auth_info]
    ${api}    Set Variable    /v2/sms-code?device_id=${device_id}&phone=${phone_num}&send_type=login
    ${res}    GET请求    ${auth_server_address}${api}    ${header}

生成随机手机号码
    ${new_phone_num}    Random Phone    86
    Set Global Variable    ${new_phone_num}

生成随机deviceId
    [Arguments]    ${size}=${33}
    ${new_device_id}    randomName    size=${size}    sign=lower
    Set Global Variable    ${new_device_id}

生成随机大写字母
    [Arguments]    ${length}
    ${name}    randomBigLetter    size=${length}
    [Return]    ${name}

生成随机小写字母
    [Arguments]    ${length}
    ${name}    randomSmallLetter    size=${length}
    [Return]    ${name}

生成随机大小写混合字母
    [Arguments]    ${length}
    ${name}    randomLetter    size=${length}
    [Return]    ${name}

生成随机字母数字
    [Arguments]    ${length}
    ${name}    randomName    size=${length}
    [Return]    ${name}

生成随机数字
    [Arguments]    ${length}
    ${name}    randomPhone    size=${length}
    [Return]    ${name}

等待时间
    [Arguments]    ${title}    ${second}
    log    ============等待${title}开始============
    ${num}    Set Variable    1
    FOR    ${i}    IN RANGE    ${second}
    sleep    1s
    ${left_time}    Evaluate    ${second}-${i}
    log    等待还剩${left_time}秒
    ${num}    Evaluate    int(${num}+1)
    Run Keyword If    ${num}==20    发送心跳
    ${num}    Run Keyword If    ${num}==20    Set Variable    1
    ...    ELSE    Set Variable    ${num}
    log    ============等待${title}结束============

配置MySQL数据库
    [Arguments]    ${host}    ${port}    ${user}    ${password}    ${db}
    loadDBConfig    ${host}    ${port}    ${user}    ${password}    ${db}

配置MongoDB数据库
    [Arguments]    ${host}    ${port}    ${user_name}    ${password}    ${db_name}    ${collection_name}
    ${mongodb_collection}    loadMongoDBConfig    ${host}    ${port}    ${user_name}    ${password}    ${db_name}    ${collection_name}
    Set Global Variable    ${mongodb_collection}

查询数据库
    [Arguments]    ${sql}
    [Documentation]    根据sql查询字段值field
    ${field}    getSQL    ${sql}
    [Return]    ${field}

查询数据库返回所有数据
    [Arguments]    ${sql}
    [Documentation]    根据sql查询字段值field
    ${field}    getSQL    ${sql}    all
    [Return]    ${field}

获取数据库多条数据
    [Arguments]    ${sql}
    [Documentation]    根据sql查询多条数据
    ${field}    getSqlMutilLine    ${sql}
    [Return]    ${field}

获取数据库多条单字段数据
    [Arguments]    ${sql}
    [Documentation]    根据sql查询多条数据，每条数据就一个字段
    ${field}    getSqlMutilLineOfSingleValue    ${sql}
    [Return]    ${field}

执行sql语句
    [Arguments]    ${sql}
    Exec SQL    ${sql}

POST请求
    [Arguments]    ${base_url}    ${data}=    ${header}=${header_default}
    [Timeout]
    ${status_code}    ${res}    http_post    ${base_url}    ${data}    ${header}
    ${res_json}    Json Dumps    ${res}
    log    ${res_json}
    [Return]    ${res}

GET请求
    [Arguments]    ${base_url}    ${header}=${header_default}
    [Timeout]
    ${status_code}    ${res}    http_get    ${base_url}    ${header}
    ${res_json}    Json Dumps    ${res}
    log    ${res_json}
    [Return]    ${res}

设置AccessToken
    [Arguments]    ${AccessToken}
    打开浏览器    &{opsInfo}[web_address]
    执行js    localStorage.setItem('pro__Access-Token','${AccessToken}');
    刷新页面

登录运营中心
    [Arguments]    ${phone_num}
    打开浏览器    &{opsInfo}[web_address]    browser=chrome
    输入手机号码    ${phone_num}
    点击获取验证码按钮
    sleep    1
    ${sms_code}    获取验证码    ${phone_num}
    输入验证码    ${sms_code}
    点击元素    ${button_login}
    sleep    1
    ${AccessToken}    获取AccessToken
    [Return]    ${AccessToken}
