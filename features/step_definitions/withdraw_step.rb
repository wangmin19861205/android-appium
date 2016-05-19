
Given /验证提现页title/ do
  mobile=Withdraw.new(@driver)
  data=mobile.check_title
  expect(data).to eq("提现")
end


Given /提现(.*)元/ do |money|
  mobile=Withdraw.new(@driver)
  mobile.withdraw_money(money)
  end


Given /验证提现确认页title/ do
  mobile=Withdraw.new(@driver)
  data=mobile.check_withdraw_confirm_title
  expect(data).to eq("提现确认")
end


Given /输入密码,提现确认/ do
  mobile=Withdraw.new(@driver)
  mobile.withdraw_confirm_money
end










