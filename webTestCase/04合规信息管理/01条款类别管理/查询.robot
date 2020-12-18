*** Settings ***
Suite Teardown    Close Browser
Resource          查询步骤.robot

*** Test Cases ***
是否需要确认查询-是
    是否需要确认查询    0    是

是否需要确认查询-否
    是否需要确认查询    1    否

是否需要更新客户信息查询-是
    刷新页面
    是否需要更新客户信息查询    0    是

是否需要更新客户信息查询-否
    是否需要更新客户信息查询    1    否
