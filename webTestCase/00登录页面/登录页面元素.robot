*** Variables ***
${input_phoneNum}    Xpath=//*[@id="formLogin"]/div[2]/div[2]/div/span/span/span/input    # 手机号码输入框
${get_smsCode}    class=getCaptcha     # 获取验证码按钮
${input_smsCode}    Xpath=//*[@id="formLogin"]/div[3]/div/div/div[2]/div/span/span/input    # 验证码输入框
${button_login}    class=login-button    # 立即登录按钮
