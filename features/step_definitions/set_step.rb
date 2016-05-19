
Given /验证设置页面title/ do
  mobile=Myset.new(@driver)
  data=mobile.pagetitle
  expect(data).to eq("设置")
end



Given /进入开通资金托管账户页面/ do
  mobile=Myset.new(@driver)
  data=mobile.in_open_account
end





