require_relative '../pageobject/pageobject'
require_relative '../pageobject/logintest'
require_relative '../pageelement/logintest'

class Logintest < PageObject
  def quickpagetitle
    @driver.find_until(Quick_Login_title).text
    sleep(5)
    @driver.find_until(Quick_Login_button).click
  end

  def pagetitle
    @driver.find_until(Login_titletest).text
  end

  def login(usernametest,passwordstest)
    sleep(5)
    a = @driver.find_until(Login_Usernametest_texttest)
    a.send_keys(usernametest)
    b = @driver.find_until(Login_Passwordtest_texttest)
    b.send_keys(passwordstest)
    @driver.find_until(Login_buttontest).click
  end

end