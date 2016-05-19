


Given /普通投资(.*)元/ do |money|
  mobile=Loanconfirm.new(@driver)
  mobile.invest_normal(money)
end





