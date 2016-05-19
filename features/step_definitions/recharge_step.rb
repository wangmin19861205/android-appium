
Given /验证充值页title/ do
  mobile=Recharge.new(@driver)
  data=mobile.check_title
  expect(data).to eq("充值")
end


Given /充值(.*)元/ do |money|
  mobile=Recharge.new(@driver)
  data=mobile.recharge_money(money)
end


Given /输入支付密码提交/ do
  mobile=Recharge.new(@driver)
  data=mobile.submit_password
end









