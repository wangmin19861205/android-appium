
Given /验证注册页面title/ do
  mobile=Register.new(@driver)
  data=mobile.pagetitle
  expect(data).to eq("注册")
end

Given /输入用户名(.*)密码(.*)验证码注册/ do |username,password|
  mobile=Register.new(@driver)
  mobile.register(username,password)
end

Given /从注册页进入登录页/ do
  mobile=Register.new(@driver)
  mobile.to_login
end

Given /滑动手势(.*),(.*),(.*),(.*),间隔(.*)秒/ do |a,b,c,d,time|
  mobile=Register.new(@driver)
  mobile.swipe(a,b,c,d,time)
end

Given /取消手势密码设置/ do
  mobile=Register.new(@driver)
  mobile.cancel_gesture
end



