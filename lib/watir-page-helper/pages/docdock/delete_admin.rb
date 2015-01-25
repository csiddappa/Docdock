require 'watir-page-helper'

module WatirPageHelper::Docdock
  module DeleteAdmin
    extend WatirPageHelper::ClassMethods
      
    direct_url "http://it.docdock.qwinixtech.com"
        
    def click_delete_admin
      ele = @browser.a(xpath: "//div[3]/div/div[3]/a[2]")
      ele.wait_until_present
    if ele.exists?
       ele.click
       @browser.alert.exists?
       @browser.alert.ok
     else
      return "No"
     end
    end
      
    def verify_delete_admin
	      search_btn = @browser.input(placeholder: "Search admin users ...")
        search_btn.wait_until_present
        search_btn.send_keys $ele
        @browser.button(xpath: "//div[2]/form/div[2]/span/button").when_present.click
        @browser.div(xpath: "//div[2]/div[4]/div[1]/div").wait_until_present
        ele = @browser.div(xpath: "//div[2]/div[4]/div[1]/div").text
        confrim_msg = @browser.p(xpath: "//div[2]/div/div/p").text
      if ele.include? $ele
        raise Exception.new "delete failed"
      else
        return "#{$ele} deleted, #{confrim_msg}"
      end
    end


  end
end
