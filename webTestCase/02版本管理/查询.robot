*** Settings ***
Suite Setup
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
    客户端类型查询    3    WEB    Web

强制升级查询-是
    刷新页面
    强制升级查询    0    是

强制升级查询-否
    强制升级查询    1    否

提示升级查询-是
    刷新页面
    强制升级查询    0    是

提示升级查询-否
    强制升级查询    1    否

显示升级信息查询-是
    刷新页面
    强制升级查询    0    是

显示升级信息查询-否
    强制升级查询    1    否
