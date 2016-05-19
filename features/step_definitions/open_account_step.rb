
Given /验证开通资金托管账户页面title/ do
  mobile=Umbpay_open_account.new(@driver)
  data=mobile.pagetitle
  expect(data).to eq("开通资金托管账户")
end

Given /开通资金托管账户,姓名(.*),身份证(.*)/ do |username,idcard|
  mobile=Umbpay_open_account.new(@driver)
  mobile.open_account(username,idcard)
end







