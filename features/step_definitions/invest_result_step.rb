


Given /验证投资的结果/ do
  mobile=Invest_result.new(@driver)
  data=mobile.check_result
  expect(data).to eq("恭喜您投资成功")
end





