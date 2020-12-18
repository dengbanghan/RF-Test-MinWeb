*** Settings ***
Resource          ../查询功能.robot

*** Keywords ***
客户端类型查询
    [Arguments]    ${number}    ${expected}    ${expected_list}
    下拉框查询    1    ${number}    ${expected}
    ${row_nums}    获取元素的数量    ${data_list_row}
    FOR    ${i}    IN RANGE    1    ${row_nums}+1
        ${locator}    Set Variable    Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[${i}]/td[2]
        ${real}    获取元素文本    ${locator}
        元素文本应该是    ${locator}    ${expected_list}    实际结果：${real}与预期结果：${expected_list}不匹配
    END

强制升级查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    2    ${number}    ${expected}
    ${row_nums}    获取元素的数量    ${data_list_row}
    FOR    ${i}    IN RANGE    1    ${row_nums}+1
        ${locator}    Set Variable    Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[${i}]/td[7]
        ${real}    获取元素文本    ${locator}
        元素文本应该是    ${locator}    ${expected}    实际结果：${real}与预期结果：${expected}不匹配
    END

提示升级查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    3    ${number}    ${expected}
    ${row_nums}    获取元素的数量    ${data_list_row}
    FOR    ${i}    IN RANGE    1    ${row_nums}+1
        ${locator}    Set Variable    Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[${i}]/td[7]
        ${real}    获取元素文本    ${locator}
        元素文本应该是    ${locator}    ${expected}    实际结果：${real}与预期结果：${expected}不匹配
    END

显示升级信息查询
    [Arguments]    ${number}    ${expected}
    下拉框查询    5    ${number}    ${expected}
    ${row_nums}    获取元素的数量    ${data_list_row}
    FOR    ${i}    IN RANGE    1    ${row_nums}+1
        ${locator}    Set Variable    Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[${i}]/td[7]
        ${real}    获取元素文本    ${locator}
        元素文本应该是    ${locator}    ${expected}    实际结果：${real}与预期结果：${expected}不匹配
    END
