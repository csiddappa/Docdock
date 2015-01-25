require 'watir-page-helper'

module WatirPageHelper::Docdock
  module LoginPage
    extend WatirPageHelper::ClassMethods
    
    direct_url "http://it.docdock.qwinixtech.com"
     
    def wait_for_login
		ele = @browser.input(:id, "sign_in_login_handle")
		ele.wait_until_present
	if ele.exists?
	   return "login page is present"
	else
	   raise Exception.new "Login page is not present"
	end
	end
	
	def enter_user_data user, pwd
		wait_for_login 
		@browser.input(:id, "sign_in_login_handle").send_keys user
		@browser.input(:id, "sign_in_password").send_keys pwd
	end
	
	def click_sign_in
        @browser.input(:xpath, "//div[1]/div/form/input").wait_until_present
        @browser.input(:xpath, "//div[1]/div/form/input").click
    end

	def verify_homepage
        verify_homepage = @browser.a(:xpath,"//div[3]/div/div[1]/ul/li[1]/a")
         verify_homepage.wait_until_present
        if verify_homepage.exists?
          return "homepage is displaying"
      else
         raise Exception.new "homepage is not displaying"
      end 
    end
	

  end
end
