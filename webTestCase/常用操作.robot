*** Settings ***
Library           Selenium2Library
Resource          公共元素.robot
Resource          业务参数.robot

*** Keywords ***
Checkbox应该不被选择
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Checkbox Should Not Be Selected    ${locator}

Frame应该包含文本
    [Arguments]    ${locator}    ${text}    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Frame Should Contain    ${locator}    ${text}    ${loglevel}

List应该无选项
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    List Should Have No Selections    ${locator}

List选项应该是
    [Arguments]    ${locator}    @{items}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    List Selection Should Be    ${locator}    @{items}

Radio按钮不应该被选择
    [Arguments]    ${group_name}
    Radio Button Should Not Be Selected    ${group_name}

Radio按钮应该被设置成
    [Arguments]    ${group_name}    ${value}
    Radio Button Should Be Set To    ${group_name}    ${value}

Url应该包含
    [Arguments]    ${expected}
    Location Should Contain    ${expected}

Xpath应该匹配X次
    [Arguments]    ${xpath}    ${expected_xpath_count}    ${msg}=    ${loglevel}=INFO
    Xpath Should Match X Times    ${xpath}    ${expected_xpath_count}    ${msg}    ${loglevel}

checkbox应该被选择
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    checkbox should be selected    ${locator}

url应该是
    [Arguments]    ${url}
    Location Should Be    ${url}

下次确认选择取消
    Choose Cancel On Next Confirmation

下次确认选择确定
    Choose Ok On Next Confirmation

从List中取消选项
    [Arguments]    ${locator}    @{items}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Unselect From List By Value    ${locator}    @{items}

从List选择选项
    [Arguments]    ${locator}    @{items}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Select From List By Value    ${locator}    @{items}

偏移拖拽
    [Arguments]    ${source}    ${xoffset}    ${yoffset}
    Drag And Drop By Offset    ${source}    ${xoffset}    ${yoffset}

元素应该不包含文本
    [Arguments]    ${locator}    ${expected}    ${msg}=
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Element Should Not Contain    ${locator}    ${expected}    ${msg}

元素应该不可用
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Element Should Be Disabled    ${locator}

元素应该不可见
    [Arguments]    ${locator}    ${msg}=
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Element Should Not Be Visible    ${locator}    ${msg}

元素应该包含文本
    [Arguments]    ${locator}    ${text}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Element Should Contain    ${locator}    ${text}

元素应该匹配x次
    [Arguments]    ${locator}    ${count}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Locator Should Match X Times    ${locator}    ${count}    ${msg}    ${loglevel}

元素应该可用
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Element Should Be Enabled    ${locator}

元素应该可见
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Element Should Be Visible    ${locator}

元素文本应该是
    [Arguments]    ${locator}    ${expected}    ${msg}=
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Element Text Should Be    ${locator}    ${expected}    ${msg}

全选List元素
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Select All From List    ${locator}

关闭所有浏览器
    Close All Browsers

关闭浏览器
    Close Browser

关闭窗口
    Close Window

切换浏览器
    [Arguments]    ${index}
    Switch Browser    ${index}

创建Webdriver
    [Arguments]    ${driver_name}    ${alias}=    ${kwargs}={}
    Create Webdriver    ${driver_name}    ${alias}    ${kwargs}

删除Cookie
    [Arguments]    ${name}
    Delete Cookie    ${name}

删除所有Cookie
    Delete All Cookies

删除本地策略
    [Arguments]    ${strategy_name}
    Remove Location Strategy    ${strategy_name}

刷新页面
    Reload Page

双击元素
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Double Click Element    ${locator}

取消选择Checkbox
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Unselect Checkbox    ${locator}

取消选择Frame
    Unselect Frame

回退
    Go Back

在图片上按下鼠标左键
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Mouse Down On Image    ${locator}

在连接上按下鼠标左键
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Mouse Down On Link    ${locator}

应该出现警告弹窗
    [Arguments]    ${text}=
    Alert Should Be Present    ${text}

当前Frame不应该包含
    [Arguments]    ${text}    ${loglvl}=INFO
    Current Frame Should Not Contain    ${text}    ${loglvl}

当前Frame包含
    [Arguments]    ${text}    ${loglevel}=INFO
    Current Frame Contains    ${text}    ${loglevel}

截屏
    [Arguments]    @{filename}
    Capture Page Screenshot    @{filename}

打开浏览器
    [Arguments]    ${url}    ${browser}=chrome    @{args}
    Open Browser    ${url}    ${browser}    @{args}
    最大化

打开菜单
    [Arguments]    ${locator}    @{items}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Open Context Menu    ${locator}

执行js
    [Arguments]    ${code}
    ${value}    Execute Javascript    ${code}
    [Return]    ${value}

执行异步js
    [Arguments]    ${code}
    Execute Async Javascript    ${code}

拖拽元素
    [Arguments]    ${source}    ${target}
    Drag And Drop    ${source}    ${target}

按下鼠标左键
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Mouse Down    ${locator}

按键
    [Arguments]    ${locator}    ${key}
    [Documentation]    按键 \ \ text_field \ \ q
    ...
    ...    按键 \ \ login_button \ \\13 \ \ #ASCII Code for enter Key
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Press Key    ${locator}    ${key}

提交表单
    [Arguments]    ${locator}=
    Submit Form    ${locator}

文本区值应该是
    [Arguments]    ${locator}    ${expected}    ${msg}=
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Textarea Value Should Be    ${locator}    ${expected}    ${msg}

文本区应该包含
    [Arguments]    ${locator}    ${expected}    ${msg}=
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Textarea Should Contain    ${locator}    ${expected}    ${msg}

文本框值应该是
    [Arguments]    ${locator}    ${expected}    ${msg}=
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Textfield Value Should Be    ${locator}    ${expected}    ${msg}

文本框应该包含
    [Arguments]    ${locator}    ${expected}    ${msg}=
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Textfield Should Contain    ${locator}    ${expected}    ${msg}

最大化
    Maximize Browser Window

标题应该是
    [Arguments]    ${title}
    Title Should Be    ${title}

根据Index从List中取消选项
    [Arguments]    ${locator}    @{indexes}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Unselect From List By Index    ${locator}    @{indexes}

根据Index从List选择
    [Arguments]    ${locator}    @{indexes}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Select From List By Index    ${locator}    @{indexes}

根据Label从List中取消选项
    [Arguments]    ${locator}    @{Labels}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Unselect From List By Label    ${locator}    @{Labels}

根据Label从List选择
    [Arguments]    ${locator}    @{labels}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Select From List By Label    ${locator}    @{labels}

根据Value从List中取消选项
    [Arguments]    ${locator}    @{values}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Unselect From List By Value    ${locator}    @{values}

根据Value从List选择
    [Arguments]    ${locator}    @{values}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Select From List By Value    ${locator}    @{values}

根据值选择列表元素
    [Arguments]    ${locator}    ${value}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Select From List By Value    ${locator}    ${value}

模拟
    [Arguments]    ${locator}    ${event}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Simulate    ${locator}    ${event}

注册失败后运行的关键字
    [Arguments]    ${kwd}
    Register Keyword To Run On Failure    ${kwd}

添加cookie
    [Arguments]    ${name}    ${value}    ${path}=    ${domain}=    ${secure}=    ${expiry}=

添加本地策略
    [Arguments]    ${strategy_name}    ${strategy_keyword}    ${persist}=False
    Add Location Strategy    ${strategy_name}    ${strategy_keyword}    ${persist}

清除元素文本
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Clear Element Text    ${locator}

点击元素
    [Arguments]    ${path}
    WaitUntilPageContainsElement    ${path}    ${wait_time}    定位元素超时
    Click Element    ${path}

点击元素坐标
    [Arguments]    ${locator}    ${xoffset}    ${yoffset}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Click Element At Coordinates    ${locator}    ${xoffset}    ${yoffset}

点击图片
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Click Image    ${locator}

点击按钮
    [Arguments]    ${num}
    WaitUntilPageContainsElement    ${button}    ${wait_time}    定位元素超时
    @{elements}    获取页面元素    ${button}
    Click Button    @{elements}[${num}]

点击链接
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Click Link    ${locator}

睡眠
    [Arguments]    ${time}
    Sleep    ${time}

确认
    Confirm Action

窗口列表
    @{list}    List Windows
    [Return]    @{list}

等待元素不包含文本
    [Arguments]    ${locator}    ${text}    ${error}=
    Wait Until Element Does Not Contain    ${locator}    ${text}    ${wait_time}    ${error}

等待元素不可见
    [Arguments]    ${locator}    ${error}=
    Wait Until Element Is Not Visible    ${locator}    ${wait_time}    ${error}

等待元素包含文本
    [Arguments]    ${locator}    ${text}    ${error}=
    Wait Until Element Contains    ${locator}    ${text}    ${wait_time}    ${error}

等待元素可用
    [Arguments]    ${locator}    ${error}=
    Wait Until Element Is Enabled    ${locator}    ${wait_time}    ${error}

等待元素可见
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    ${wait_time}

等待执行成功
    [Arguments]    ${retry}    ${keyword}    @{args}
    Wait Until Keyword Succeeds    ${wait_time} minutes    ${retry} sec    ${keyword}    @{args}

等待条件成立
    [Arguments]    ${condition}    ${error}=
    Wait For Condition    ${condition}    ${wait_time}    ${error}

等待页面不包含元素
    [Arguments]    ${locator}    ${error}=
    Wait Until Page Does Not Contain Element    ${locator}    ${wait_time}    ${error}

等待页面包含元素
    [Arguments]    ${locator}    ${error}=
    Wait Until Page Contains Element    ${locator}    ${wait_time}    ${error}

等待页面包含文本
    [Arguments]    ${text}    ${error}=
    Wait Until Page Contains    ${text}    ${wait_time}    ${error}

给元素分配ID
    [Arguments]    ${locator}    ${id}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Assign Id To Element    ${locator}    ${id}

获取Cookie值
    [Arguments]    ${name}
    ${value}    Get Cookie Value    ${name}
    [Return]    ${value}

获取List元素
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    @{items}    Get List Items    ${locator}

获取List多个选定值
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    @{values}    Get Selected List Values    ${locator}
    [Return]    @{values}

获取List多个选定标签
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    @{labels}    Get Selected List Labels    ${locator}
    [Return]    @{labels}

获取List选定值
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    ${value}    Get Selected List Value    ${locator}
    [Return]    ${value}

获取List选定标签
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    ${label}    Get Selected List Label    ${locator}
    [Return]    ${label}

获取Selenium等待时间
    ${sec}    Get Selenium Implicit Wait
    [Return]    ${sec}

获取Selenium超时
    ${timeout}    Get Selenium Timeout
    [Return]    ${timeout}

获取Selenium速率
    ${res}    Get Selenium Speed
    [Return]    ${res}

获取xpath匹配次数
    [Arguments]    ${xpath}
    ${count}    Get Matching Xpath Count    ${xpath}
    [Return]    ${count}

获取元素值
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    ${value}    Get Value    ${locator}
    [Return]    ${value}

获取元素属性
    [Arguments]    ${attribute_locator}    ${attribute_name}
    ${value}    Get Element Attribute    ${attribute_locator}    ${attribute_name}
    [Return]    ${value}

获取元素文本
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    ${text}    Get Text    ${locator}
    [Return]    ${text}

获取元素的数量
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    ${nums}    Get Element Count    ${locator}
    [Return]    ${nums}

获取坐标
    ${location}    Get Location
    [Return]    ${location}

获取垂直坐标
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    ${vertical}    Get Vertical Position    ${locator}
    [Return]    ${vertical}

获取当前Url
    ${url}    Log Location
    [Return]    ${url}

获取当前页面标题
    ${title}    Log Title
    [Return]    ${title}

获取所有Cookie
    @{cookies}    Get Cookies
    [Return]    @{cookies}

获取所有连接
    @{links}    Get All Links
    [Return]    @{links}

获取文本
    [Arguments]    ${path}
    ${text}    get text    ${path}
    [Return]    ${text}

获取标题
    ${title}    get title
    [Return]    ${title}

获取水平坐标
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    @{position}    Get Horizontal Position    ${locator}
    [Return]    @{position}

获取焦点
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Focus    ${locator}

获取窗口名字
    @{names}    Get Window Names
    [Return]    @{names}

获取窗口坐标
    ${x}    ${y}=    Get Window Position
    [Return]    ${x}    ${y}

获取窗口大小
    ${width}    ${higth}=    GET Window Size
    [Return]    ${width}    ${higth}

获取窗口标识
    @{windows}    Get Window Identifiers
    [Return]    @{windows}

获取窗口标题
    @{titles}    Get Window Titles
    [Return]    @{titles}

获取表格内容
    [Arguments]    ${table_locator}    ${row}    ${column}    ${loglevel}=INFO
    ${cell}    Get Table Cell    ${table_locator}    ${row}    ${column}    ${loglevel}
    [Return]    ${cell}

获取警告信息
    ${msg}    Get Alert Message
    [Return]    ${msg}

获取资源
    ${source}    Get Source
    [Return]    ${source}

获取页面元素
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    @{elements}    Get Webelements    ${locator}
    [Return]    @{elements}

获取页面标题
    ${title}    Get Title
    [Return]    ${title}

获取页面资源
    [Arguments]    ${loglevel}=INFO
    ${source}    Log Source    ${loglevel}
    [Return]    ${source}

表头应该包含
    [Arguments]    ${table_locator}    ${expected}    ${loglevel}=INFO
    table header should contain    ${table_locator}    ${expected}    ${loglevel}

表头应该包含文本
    [Arguments]    ${table_locator}    ${expected}    ${loglevel}=INFO
    Table Header Should Contain    ${table_locator}    ${expected}    ${loglevel}

表应该包含文本
    [Arguments]    ${table_locator}    ${expected}    ${loglevel}=INFO
    Table Should Contain    ${table_locator}    ${expected}    ${loglevel}

表格Footer应该包含文本
    [Arguments]    ${table_locator}    ${expected}    ${loglevel}
    Table Footer Should Contain    ${table_locator}    ${expected}    ${loglevel}

表格列应该包含文本
    [Arguments]    ${table_locator}    ${col}    ${expected}    ${loglevel}=INFO
    Table Column Should Contain    ${table_locator}    ${col}    ${expected}    ${loglevel}

表格应该包含
    [Arguments]    ${table_locator}    ${row}    ${column}    ${expected}
    table cell should contain    ${table_locator}    ${row}    ${column}    ${expected}

表格应该包含文本
    [Arguments]    ${table_locator}    ${row}    ${column}    ${expected}    ${loglevel}=INFO
    Table Cell Should Contain    ${table_locator}    ${row}    ${column}    ${expected}    ${loglevel}

表格行应该包含文本
    [Arguments]    ${table_locator}    ${row}    ${expected}    ${loglvl}=INFO
    Table Row Should Contain    ${table_locator}    ${row}    ${expected}    ${loglvl}

设置Selenium等待
    [Arguments]    ${seconds}
    ${return}    Set Selenium Implicit Wait    ${seconds}
    [Return]    ${return}

设置Selenium超时
    [Arguments]    ${seconds}
    Set Selenium Timeout    ${seconds}

设置Selenium速率
    [Arguments]    ${speed}
    Set Selenium Speed    ${speed} seconds

设置浏览器等待时间
    [Arguments]    ${seconds}
    Set Browser Implicit Wait    ${seconds}

设置窗口坐标
    [Arguments]    ${x}    ${y}
    Set Window Position    ${x}    ${y}

设置窗口大小
    [Arguments]    ${width}    ${higth}
    Set Window Size    ${width}    ${higth}

跳转到
    [Arguments]    ${url}
    go to    ${url}

输入密码
    [Arguments]    ${path}    ${passwd}
    Input password    ${path}    ${passwd}

输入文本
    [Arguments]    ${path}    ${str}
    WaitUntilPageContainsElement    ${path}    ${wait_time}    定位元素超时
    Input Text    ${path}    ${str}

选择Checkbox
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Select Checkbox    ${locator}

选择Frame
    [Arguments]    ${locator}
    Select Frame    ${locator}

选择Radio按钮
    [Arguments]    ${group_name}    ${value}
    Select Radio Button    ${group_name}    ${value}

选择文件
    [Arguments]    ${locator}    ${file_path}
    Choose File    ${locator}    ${file_path}

选择窗口
    [Arguments]    ${locator}=
    Select Window    ${locator}

页面应该不包含Checkbox
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain Checkbox    ${locator}    ${msg}    ${loglevel}

页面应该不包含Link
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain Link    ${locator}    ${msg}    ${loglevel}

页面应该不包含List
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain List    ${locator}    ${msg}    ${loglevel}

页面应该不包含Radio按钮
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain Radio Button    ${locator}    ${msg}    ${loglevel}

页面应该不包含元素
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain Element    ${locator}    ${msg}    ${loglevel}

页面应该不包含图片
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain Image    ${locator}    ${msg}    ${loglevel}

页面应该不包含按钮
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain Button    ${locator}    ${msg}    ${loglevel}

页面应该不包含文本
    [Arguments]    ${text}    ${lvl}=INFO
    Page Should Not Contain    ${text}    ${lvl}

页面应该不包含文本框
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Not Contain Textfield    ${locator}    ${msg}    ${loglevel}

页面应该包含Checkbox
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain Checkbox    ${locator}    ${msg}    ${loglevel}

页面应该包含Link
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain Link    ${locator}    ${msg}    ${loglevel}

页面应该包含List
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain List    ${locator}    ${msg}    ${loglevel}

页面应该包含Radio按钮
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain Radio Button    ${locator}    ${msg}    ${loglevel}

页面应该包含元素
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain Element    ${locator}    ${msg}    ${loglevel}

页面应该包含图片
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain Image    ${locator}    ${msg}    ${loglevel}

页面应该包含按钮
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain Button    ${locator}    ${msg}    ${loglevel}

页面应该包含文本
    [Arguments]    ${text}    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain    ${text}    ${loglevel}

页面应该包含文本框
    [Arguments]    ${locator}    ${msg}=    ${loglevel}=INFO
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Page Should Contain Textfield    ${locator}    ${msg}    ${loglevel}

鼠标悬停
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Mouse Over    ${locator}

鼠标移出
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Mouse Out    ${locator}

鼠标释放
    [Arguments]    ${locator}
    WaitUntilPageContainsElement    ${locator}    ${wait_time}    定位元素超时
    Mouse Up    ${locator}
