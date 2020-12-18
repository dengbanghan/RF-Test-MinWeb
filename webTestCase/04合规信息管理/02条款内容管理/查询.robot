*** Settings ***
Suite Teardown    Close Browser
Resource          查询步骤.robot

*** Test Cases ***
客户端类型查询-Android
    客户端类型查询    0    APP-Android    Android

客户端类型查询-iOS
    客户端类型查询    1    APP-IOS    IOS

客户端类型查询-PC
    客户端类型查询    2    PC    PC

客户端类型查询-WEB
    客户端类型查询    3    WEB    WEB

是否需要确认查询-是
    刷新页面
    是否需要确认查询    0    是

是否需要确认查询-否
    是否需要确认查询    1    否

是否需要更新客户信息查询-是
    刷新页面
    是否需要更新客户信息查询    0    是

是否需要更新客户信息查询-否
    是否需要更新客户信息查询    1    否
