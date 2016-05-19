require_relative '../pageobject/pageobject'
require_relative '../pageelement/invest_result'


class Invest_result < PageObject
  def pagetitle
    @driver.find_until(Investresult_page_title).text
  end

  def check_result
    @driver.find_until(Investresult_reason).text
  end




end




