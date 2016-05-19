require_relative '../pageelement/4register_page'
require_relative '../pageobject/pageobject'

class Register < PageObject
  def pagetitle
    @driver.find_until(Register_Page_title).text
  end

  def register username,password
      @driver.fill_in(Username_text,username)
      @driver.find_until(Get_code).click
      conn=MyDB.new("rui_site")
#       codetext=((conn.sqlquery("select content from sms_records where numbers = '#{username}' order by id desc limit 1")).all[0])[:content]
#       code=/您的手机注册验证码为：(.*)，验证码10分钟内有效/.match(codetext).to_a[1]
      code=Common.register_code(conn,username)
      @driver.fill_in(Verification_code,code)
      @driver.fill_in(Password_text,password)
      @driver.hide_keyboard
      @driver.find_until(Confirm_button).click
  end

  def cancel_gesture
    @driver.find_until(Cancel_gesture).click
  end

  def to_login
    @driver.find_until(Login_link)
  end


end