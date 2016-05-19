require_relative '../pageobject/pageobject'
require_relative '../pageelement/7recharge'


class Recharge < PageObject
  def check_title
    @driver.find_until(Recharge_title).text
  end

  def check_available_money
    @driver.find_until(Recharge_available_money).text
  end


  def recharge_money money
    @driver.fill_in(Recharge_recharge_money,money)
    @driver.find_until(Recharge_recharge_button).click
  end

  def submit_password
    @driver.fill_in(RechargeDialog_password,'123456')
    @driver.find_until(RechargeDialog_confirm_button).click
  end

end




