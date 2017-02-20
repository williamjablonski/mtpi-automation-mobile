# Browser class to handle the browser initialize/destroy workflow
module Browser
  def self.setup_browser

    APP_PATH = '../../apps/Triangulo.apk'

    desired_caps = {
      caps:       {
        platformName:  'Android',
        versionNumber: '4.3',
        deviceName:    'Android Emulator',
        app:           APP_PATH,
      },
      appium_lib: {
        sauce_username:   nil, # don't run on Sauce
        sauce_access_key: nil
      }
    }

    
      @driver = Appium::Driver.new(desired_caps).start_driver
    
  end

  def self.tear_down

    @driver.close

  end

end
