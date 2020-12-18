*** Settings ***
Resource          ../../查询功能.robot

*** Keywords ***
是否需要确认查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    1    ${number}    ${expected}
    睡眠    0.1
    检查列表的值    1    ${expected}

是否需要更新客户信息查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    3    ${number}    ${expected}
    睡眠    0.1
    检查列表的值    2    ${expected}
