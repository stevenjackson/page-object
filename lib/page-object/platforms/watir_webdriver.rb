module PageObject
  module Platforms
    module WatirWebDriver
      
      def self.create_page_object(browser)
        return WatirWebDriver::PageObject.new(browser)
      end

      def self.is_for?(browser)
        require 'watir-webdriver'
        browser.is_a?(::Watir::Browser)
      end
    end
  end
end

PageObject::Platforms.register(:watir_webdriver, PageObject::Platforms::WatirWebDriver)
