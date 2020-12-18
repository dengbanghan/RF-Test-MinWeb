*** Settings ***
Resource          ../../查询功能.robot

*** Keywords ***
市场类型查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    2    ${number}    ${expected}
    睡眠    0.1
    检查列表的值    6    ${expected}
