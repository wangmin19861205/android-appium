
Given /在设置页面点击button/ do
  mobile = Logintest.new(@driver)
  mobile.quickpagetitle()
end

Given /在快速登录button后输入用户名(.*)密码(.*)登录,成功后进入/ do |usernametest,passwordtest|
  mobile = Logintest.new(@driver)
  mobile.login(usernametest,passwordtest)
end