*** Settings ***
Library           Selenium2Library
Resource          登录步骤.robot

*** Test Cases ***
大陆手机号登录
    ${phone_num}    Set Variable    18888888888
    完整登录流程    ${phone_num}
    sleep    0.5
    ${Account}    Get Text    class=action
    ${result}    查询数据库    SELECT account FROM `operation-center-qa`.auth_user WHERE phone='${phone_num}';
    ${AccountName}    searchDicKV    ${result}    account
    Should Be Equal As Strings    ${AccountName}    ${Account}
