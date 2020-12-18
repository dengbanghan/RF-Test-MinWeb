*** Settings ***
Resource          ../../查询功能.robot
Resource          ../../校验功能.robot

*** Keywords ***
客户端类型查询
    [Arguments]    ${number}    ${expected_list}    ${expected}
    下拉框查询    1    ${number}    ${expected_list}
    睡眠    0.1
    检查列表的值    0    ${expected}

是否需要确认查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    2    ${number}    ${expected}
    睡眠    0.1
    检查列表的值    3    ${expected}

是否需要更新客户信息查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    4    ${number}    ${expected}
    睡眠    0.1
    检查列表的值    4    ${expected}
