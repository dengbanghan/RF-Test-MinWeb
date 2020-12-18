*** Settings ***
Resource          公共元素.robot
Resource          常用操作.robot
Resource          校验功能.robot

*** Keywords ***
下拉框查询
    [Arguments]    ${box_num}    ${list_num}    ${expected_list}
    Comment    点击下拉框的元素
    @{box_elements}    获取查询框元素
    点击元素    @{box_elements}[${box_num}]
    @{list_elements}    获取下拉框列表元素
    点击元素    @{list_elements}[${list_num}]
    Comment    选择下拉框选项后对选中的结果(@{box_elements}[${box_num}])和预期结果(${expected})做对比
    ${real}    获取元素文本    @{box_elements}[${box_num}]
    元素文本应该是    @{box_elements}[${box_num}]    ${expected_list}    实际结果：${real}与预期结果：${expected_list}不匹配
    点击查询按钮

检查列表的值
    [Arguments]    ${column_num}    ${expected}
    ${row_nums}    获取元素的数量    ${data_list_row}
    @{list}    获取页面元素    ${data_list_row}
    FOR    ${i}    IN RANGE    1    ${row_nums}
        ${text}    获取元素文本    @{list}[${i}]
        ${text_list}    Evaluate    '${text}'.split(' ')
        ${real}    Set Variable    ${text_list}[${column_num}]
        两值校验    ${real}    ${expected}
    END

输入框查询
    [Arguments]    ${input_box_element}    ${input_text}
    Comment    输入框元素    查询条件
    输入文本    ${input_box_element}    ${input_text}
    点击查询按钮

点击查询按钮
    @{elements}    获取页面元素    ${button}
    点击按钮    0

点击重置按钮
    @{elements}    获取页面元素    ${button}
    点击按钮    1

点击新增按钮
    @{elements}    获取页面元素    ${button}
    点击按钮    2

点击查询框
    [Arguments]    ${num}
    @{elements}    获取查询框元素
    Click Element    @{elements}[${num}]

获取查询框元素
    WaitUntilPageContainsElement    ${box}    ${wait_time}    定位元素超时
    @{elements}    获取页面元素    ${box}
    [Return]    @{elements}

获取下拉框列表元素
    WaitUntilPageContainsElement    ${check_list}    ${wait_time}    定位元素超时
    @{elements}    获取页面元素    ${check_list}
    [Return]    @{elements}
