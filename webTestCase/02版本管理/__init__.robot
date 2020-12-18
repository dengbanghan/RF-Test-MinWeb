*** Settings ***
Suite Setup       Run Keywords    设置AccessToken    ${AccessToken}
...               AND    进入版本管理
Suite Teardown
Resource          ../菜单跳转.robot
Resource          ../业务参数.robot
Resource          ../程序功能.robot
