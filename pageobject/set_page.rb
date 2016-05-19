require_relative '../pageobject/pageobject'
require_relative '../pageelement/13set'


class Myset < PageObject
  def pagetitle
    @driver.find_until(Set_page_title).text
  end

  def in_open_account
    @driver.find_until(Umbpay_amount).click
  end









end




