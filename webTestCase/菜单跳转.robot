*** Settings ***
Resource          常用操作.robot
Resource          业务参数.robot

*** Variables ***
&{menu}           userInfo=user-search/user-info    edition=edition-manage/edition    market=product-manage/market    product=product-manage/product    termsCategory=compliance-information-manage/terms-category    termsConditions=compliance-information-manage/terms-conditions    counterManage=ipo-manage/counter-manage    passFormManage=ipo-manage/pass-form-manage    stockRecommend=ipo-manage/stock-recommend    setting=ipo-manage/setting    financingText=ipo-manage/financing-text    helpContentManage=help-center/content-manage    appSetting=help-center/space-setting/app-setting    showSpace=help-center/show-space    problem=help-center/problem    contact=help-center/contact    sendPlan=message/send-message/send-plan
...               messageLog=message/message-log    activityContentManage=activity/content-manage    showConfig=activity/show-config    activityData=activity/activity-data    materials=information/materials    hotspot=information/hotspot    thirdPartyInfo=information/third-party-info    spaceSetting=information/space-setting    calendarMarket=calendar-manage/calendar-market    calendarSetting=calendar-manage/calendar-setting    timeSetting=calendar-manage/time-setting    marketPackage=market-manager/market-package    orderManager=market-manager/order-manager    deductionRecord=market-manager/deduction-record    userManage=authority-manage/user-manage    roleManage=authority-manage/role-manage    recordManage=authority-manage/record-manage
...               server=server-manage/server    dictionary=system/dictionary

*** Keywords ***
进入用户信息
    跳转到    &{opsInfo}[web_address]&{menu}[userInfo]

进入版本管理
    跳转到    &{opsInfo}[web_address]&{menu}[edition]

进入市场管理
    跳转到    &{opsInfo}[web_address]&{menu}[market]

进入产品管理
    跳转到    &{opsInfo}[web_address]&{menu}[product]

进入条款类别管理
    跳转到    &{opsInfo}[web_address]&{menu}[termsCategory]

进入条款内容管理
    跳转到    &{opsInfo}[web_address]&{menu}[termsConditions]
