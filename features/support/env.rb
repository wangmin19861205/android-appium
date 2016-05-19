require 'appium_lib'
base_dir = File.dirname(File.dirname(File.dirname(__FILE__)))             #工作目录
lib_dir  = File.join(base_dir, "libs/iframe")        #lib包目录
pageobject = File.join(base_dir, "pageobject")   #pageobject包目录


ENV["reportpath"]=File.join(base_dir,"report/")
#将lib,pageobject包目录添加至系统变量中
$LOAD_PATH.unshift(lib_dir)
#导入gem包
require 'bundler/setup'
require 'watir-webdriver'
Bundler.require(:default)

#将lib与page包下的文件全部导入
Dir.foreach(lib_dir) do |filename|
  if filename != "." and filename != ".." and filename != "gitpull.rb"
    filename = File.join(lib_dir,"#{filename}")
    require_relative "#{filename}"
  end
end
Dir.foreach(pageobject) do |filename|
  if filename != "." and filename != ".."
    filename = File.join(pageobject,"#{filename}")
    require_relative "#{filename}"
  end
end
Dir.foreach(File.join(base_dir, "report")) do |filename|
  if filename != "." and filename != ".."
    filename = File.join(File.join(base_dir, "report"),"#{filename}")
    File.delete(filename)
  end
end


caps=Appium.load_appium_txt file: File.join(base_dir,"/config/appium.txt"),verbose: true
# caps = {caps:       { platformName: 'Android', deviceName: 'www',
#                       appActivity: '.ui.LaunchPageActivity', appPackage: 'com.zrcaifu',newCommandTimeout:  120,
#                       unicodeKeyboard:  true, resetKeyboard:  true },
#         appium_lib: {server_url: ENV["hub"]}}



 Before do |scenario|
  clear_redis
  # http_client = ::Selenium::WebDriver::Remote::Http::Default.new
  # http_client.timeout = 80
  # @driver=Selenium::WebDriver.for(
  #     :remote,
  #     :desired_capabilities => caps[:caps],
  #     :url => 'http://192.168.1.49:4444/wd/hub',
  #     :http_client => http_client
  # )
  @driver=Appium::Driver.new(caps)
  @driver.start_driver
  sleep 2
  # if @driver.element_exists?(Guide_button)
  #   @driver.find_until(Guide_button).click
  # end
  # if @driver.element_exists?(Guide_first_close_button)
  #   @driver.find_until(Guide_first_close_button).click
  # end
end


After do |scenario|
  @driver.driver_quit
  if scenario.failed?
    subject = "[Project X] #{scenario.exception.message}"
    end
end

at_exit do
  driver=Watir::Browser.new :chrome
  driver.window.maximize
  driver.goto "file://#{File.realpath(base_dir)}/report/report.html"
end


