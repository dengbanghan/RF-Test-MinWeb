*** Settings ***
Suite Setup
Suite Teardown    Close Browser
Library           Selenium2Library
Resource          用户信息页面元素.robot
Resource          ../公共元素.robot
Resource          查询步骤.robot
Resource          ../程序功能.robot

*** Test Cases ***
不加条件查询
    点击查询按钮

手机号精准查询
    输入文本    ${input_phoneNum}    17722527464
    点击查询按钮

手机号模糊查询
    输入文本    ${input_phoneNum}    188
    点击查询按钮

已开户用户查询
    组别查询    1    已开户

未开户用户查询
    组别查询    2    未开户

已入金用户查询
    组别查询    3    已入金

未入金用户查询
    组别查询    4    未入金

全部用户查询
    组别查询    5    全部用户

查询更新日期为1个月的数据
    更新日期查询
