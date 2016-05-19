require_relative '../pageobject/pageobject'
require_relative '../pageelement/loan_confirm'


class Loanconfirm < PageObject
  def pagetitle
    @driver.find_until(Loanconfirm_page_title).text
  end

  def invest_normal money
    @driver.fill_in(Loanconfirm_invest_amount,money)
    @driver.find_until(Loanconfirm_invest_confirm_button).click
  end



end




