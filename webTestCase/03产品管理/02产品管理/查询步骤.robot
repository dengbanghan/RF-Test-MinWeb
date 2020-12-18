*** Settings ***
Resource          ../../查询功能.robot

*** Keywords ***
客户端类型查询
    [Arguments]    ${number}    ${expected}    ${expected_list}
    下拉框查询    2    ${number}    ${expected_list}
    睡眠    0.1
    检查列表的值    6    ${expected}
