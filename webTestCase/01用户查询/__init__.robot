*** Settings ***
Suite Setup       Run Keywords    设置AccessToken    ${AccessToken}
...               AND    进入用户信息
Suite Teardown
Test Teardown
Resource          ../程序功能.robot
