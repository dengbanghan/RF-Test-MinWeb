*** Settings ***
Library           Selenium2Library
Resource          登录页面元素.robot
Resource          ../程序功能.robot
Resource          ../菜单跳转.robot

*** Keywords ***
输入手机号码
    [Arguments]    ${phone_num}
    Input Text    ${input_phoneNum}    ${phone_num}

点击获取验证码按钮
    Click Button    ${get_smsCode}

获取验证码
    [Arguments]    ${phone_num}
    [Documentation]    从数据库获取验证码，需要手机号码作为参数
    ${result}    查询数据库    SELECT metadata FROM message_push_qa.push_message WHERE receiver LIKE '%${phone_num}%' ORDER BY last_modified_date DESC LIMIT 1;
    ${metadata}    searchDicKV    ${result}    metadata
    ${metadata_dict}    Json Loads    ${metadata}
    ${templateParam}    searchDicKV    ${metadata_dict}    templateParam
    ${sms_code}    searchDicKV    ${templateParam}    sms_auth_code
    [Return]    ${sms_code}

输入验证码
    [Arguments]    ${sms_code}
    输入文本    ${input_smsCode}    ${sms_code}
