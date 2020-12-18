*** Settings ***
Library           ../../Library/RFCommonLibrary/
Resource          用户信息页面元素.robot
Resource          ../公共元素.robot
Resource          ../查询功能.robot

*** Keywords ***
组别查询
    [Arguments]    ${group_num}    ${group_select}
    下拉框查询    ${group}    ${group_num}    ${group_text}    ${group_select}

更新日期查询
    点击元素    ${updated}
    executejavascript    window.document.getElementsByClassName('ant-calendar-cell')[1].click()
    executejavascript    window.document.getElementsByClassName('ant-calendar-cell')[10].click()
    ${start_date}    Set Variable    2020年11月26日
    ${stop_date}    Set Variable    2020年12月26日
    Comment    ${date}    获取元素值    Xpath=/html/body/div[4]/div/div/div/div/div[1]/div[1]/div[2]/div[2]/table/tbody/tr[6]/td[1]
    Comment    点击元素    title=${start_date}
    Comment    点击元素    title=${stop_date}
    点击查询按钮
