*** Settings ***
Suite Teardown    Close Browser
Resource          查询步骤.robot

*** Test Cases ***
市场类型-市场查询
    市场类型查询    0    市场

市场类型-板块查询
    市场类型查询    1    板块
