# This is an example of how you can set up screenshots for your
# browser testing. Just run cucumber with --format html --out report.html
#
# The code below will work on OS X or Windows (with IE Watir only).
# Adding support for other platforms should be easy - as long as there is a
# ruby library or command line tool to take pictures.
#

module Screenshots

  def embed_screenshot_appium(id)
    img="#{ENV["reportpath"]}#{id}.png"
    @driver.screenshot  "#{img}"
    embed("#{img}", "image/png")
  end

  def embed_screenshot_osx(id)
    img="#{ENV["reportpath"]}#{id}.png"
    `screencapture -t png #{img}`
    embed("#{img}", "image/png")
  end
  # http://wtr.rubyforge.org/rdoc/classes/Watir/ScreenCapture.html

  if Cucumber::WINDOWS
    require 'watir/screen_capture'
    include Watir::ScreenCapture
    def embed_screenshot_ie(id)
      img="#{ENV["reportpath"]}#{id}.jpg"
      screen_capture("#{img}", true)
      embed("#{img}", "image/jpeg")
    end
  end
    # Other platforms...
    def embed_screenshot_unknown(id)
      STDERR.puts "Sorry - no screenshots on your platform yet."
    end
end
World(Screenshots)


include Timediy
After do |scenario|
  if(scenario.failed?)
    name="screenshot-#{Timediy.getnowtimeall}"
    embed_screenshot_appium(name)
    end
end





# Other variants:
#
# Only take screenshot on failures
#
#   After do |scenario|
#     embed_screenshot("screenshot-#{Time.new.to_i}") if scenario.failed?
#   end
#
# Only take screenshot for scenarios or features tagged @screenshot
#
#   After(@screenshot) do
#     embed_screenshot("screenshot-#{Time.new.to_i}")
#   end
