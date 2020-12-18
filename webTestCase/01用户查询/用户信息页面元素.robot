*** Settings ***
Resource          ../常用操作.robot

*** Variables ***
${input_phoneNum}    Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[1]/form/div/div[2]/div/div[2]/div/span/input    # 手机号输入框
${button_reset}    Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[1]/form/div/div[4]/span/button[2]    # 重置按钮
${group}          Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[1]/form/div/div[3]/div/div[2]/div/span/div/div    # 组别下拉框
${group_text}     Xpath=//*[@id="app"]/section/section/main/div/div[2]/div/div/div/div[1]/form/div/div[3]/div/div[2]/div/span/div/div/div/div[2]    # 组别已选中的文本
