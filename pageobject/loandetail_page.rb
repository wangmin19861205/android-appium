require_relative '../pageobject/pageobject'
require_relative '../pageelement/loan_detail'


class Loandetail < PageObject
  def pagetitle
    @driver.find_until(Loandetail_page_title).text
  end

  def in_loanconfirm
    @driver.find_until(Loandetail_invest_button).click
  end




end




