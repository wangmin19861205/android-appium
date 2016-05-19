require_relative '../pageobject/pageobject'
require_relative '../pageelement/6withdraw'


class Withdraw < PageObject
  def check_title
    @driver.find_until(Withdraw_page_title).text
  end

  def check_available_money
    @driver.find_until(Withdraw_available_money).text
  end


  def withdraw_money money
    @driver.fill_in(Withdraw_input_money,money)
    @driver.find_until(Withdraw_submit_button).click
  end

  def check_withdraw_confirm_title
    @driver.find_until(Withdraw_confirm_page_title).text
  end

  def withdraw_confirm_money
    @driver.find_until(Withdraw_confirm_get_code_button).click
    @driver.fill_in(Withdraw_confirm_code,'1234')
    @driver.fill_in(Withdraw_confirm_password,'123456')
    @driver.find_until(Withdraw_confirm_submit).click
  end


end




