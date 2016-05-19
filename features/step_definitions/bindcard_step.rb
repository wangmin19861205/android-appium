Given /验证添加宝易互通银行卡过度页面title/ do
  mobile=Umbpay_bindcard.new(@driver)
  data=mobile.pagetitle
  expect(data).to eq("添加宝易互通支付银行卡")
end

Given /添加宝易互通银行卡,输入银行卡(.*)/ do |card|
  mobile=Umbpay_bindcard.new(@driver)
  mobile.bindcard_over(card)
end


Given /验证添加银行卡页面/ do
  mobile=Umbpay_bindcard.new(@driver)
  data=mobile.pagetitle
  expect(data).to eq("添加银行卡")
end




Given /充值添加银行卡,预留手机号(.*)/ do |phone|
  mobile=Umbpay_bindcard.new(@driver)
  mobile.recharge_bindcard(phone)
end

Given /验证银行卡,输入预留手机号(.*)/ do |phone|
  mobile=Umbpay_bindcard.new(@driver)
  mobile.checkcard(phone)
end

Given /投资添加银行卡,预留手机号(.*)/ do |phone|
  mobile=Umbpay_bindcard.new(@driver)
  mobile.invest_bindcard(phone)
end





Given /确认5元提示窗/ do
  mobile=Umbpay_bindcard.new(@driver)
  mobile.confirm_info
end






