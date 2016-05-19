require_relative '../pageobject/pageobject'
require_relative '../pageelement/umbpay_bindcard'


class Umbpay_bindcard < PageObject
  def pagetitle
    @driver.find_until(Bincard_page_title).text
  end

  def bindcard_over(bankcard)
    @driver.fill_in(BincardOver_byht_card_text,bankcard)
    @driver.find_until(BincardOver_sumbit_button).click
  end

  def recharge_bindcard(phone)
    @driver.find_until(Bincard_province).click
    Help_appium.dmd_click 453,467
    @driver.fill_in(Bincard_phone,phone)
    @driver.find_until(Bincard_code_button).click
    @driver.fill_in(Bincard_code,'1234')
    @driver.fill_in(Bincard_password,'123456')
    @driver.swipe({start_x: 240, start_y: 550,end_x: 240,end_y: 250,duration: 150})
    @driver.find_until(Bincard_submit_button).click
  end

  def invest_bindcard(phone)
    @driver.find_until(Bincard_invest_province).click
    Help_appium.dmd_click 453,467
    @driver.fill_in(Bincard_invest_phone,phone)
    @driver.find_until(Bincard_invest_code_button).click
    @driver.fill_in(Bincard_invest_code,'1234')
    @driver.fill_in(Bincard_invest_password,'123456')
    @driver.swipe({start_x: 240, start_y: 550,end_x: 240,end_y: 250,duration: 150})
    @driver.find_until(Bincard_invest_submit_button).click
  end


  def checkcard(phone)
    @driver.find_until(Bincard_check_province).click
    @driver.find_until(Bincard_check_province).click
    Help_appium.dmd_click 453,467
    @driver.fill_in(Bincard_check_phone,phone)
    @driver.find_until(Bincard_check_code_button).click
    @driver.fill_in(Bincard_check_code,'1234')
    @driver.find_until(Bincard_check_password,'123456')
    @driver.swipe({start_x: 240, start_y: 550,end_x: 240,end_y: 250,duration: 150})
    @driver.find_until(Bincard_check_submit_button).click
  end

  def confirm_info
    @driver.find_until(Bincard_info_confirm_button).click
  end




end




