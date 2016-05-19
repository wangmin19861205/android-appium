require_relative '../pageobject/pageobject'
require_relative '../pageelement/umbpay_open_amount'


class Umbpay_open_account < PageObject
  def pagetitle
    @driver.find_until(Open_account_page_title).text
  end

  def open_account username,idcard
    @driver.fill_in(Open_account_name,username)
    @driver.fill_in(Open_account_idcard,idcard)
    @driver.fill_in(Open_account_password,'123456')
    @driver.fill_in(Open_account_repassword,'123456')
    @driver.find_until(Open_account_code_button).click
    @driver.fill_in(Open_account_code,'1234')
    @driver.find_until(Open_account_submit_button).click
  end



end




