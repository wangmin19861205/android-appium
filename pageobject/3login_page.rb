require_relative '../pageobject/pageobject'
require_relative '../pageelement/3login_page'



class Login < PageObject
  def pagetitle
    @driver.find_until(Login_title).text
  end

  def login(username,password)
    sleep 2
    @driver.fill_in(Login_Username_text,username)
    @driver.fill_in(Login_Password_text,password)
    @driver.find_until(Login_confirm_button).click
  end

  def to_register
    @driver.find_until(Register_button).click
  end

end




