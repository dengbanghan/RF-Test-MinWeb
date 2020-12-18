*** Settings ***
Suite Setup       Run Keywords    设置AccessToken    ${AccessToken}
...               AND    进入市场管理
Resource          ../../菜单跳转.robot
Resource          ../../程序功能.robot
