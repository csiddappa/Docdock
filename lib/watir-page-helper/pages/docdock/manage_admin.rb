require 'watir-page-helper'

module WatirPageHelper::Docdock
  module ManageAdmin
    extend WatirPageHelper::ClassMethods
    
    direct_url "http://it.docdock.qwinixtech.com"
     
    def verify_homepage
        verify_homepage = @browser.a(:xpath,"//div[3]/div/div[1]/ul/li[1]/a")
         verify_homepage.wait_until_present
        if verify_homepage.exists?
          return "homepage is displaying"
      else
         raise Exception.new "homepage is not displaying"
      end 
    end
	
	def click_manage_admin
		@browser.a(xpath: "//div[3]/div/div[1]/ul/li[2]/a").wait_until_present
@browser.a(xpath: "//div[3]/div/div[1]/ul/li[2]/a").click
end

  def verify_manage_admin
  	verify_manage_adminpage = @browser.div(xpath: "//div[1]/div[3]/div/div[1]/div")
verify_manage_adminpage.wait_until_present
if verify_manage_adminpage.exists?
	return "manage adminpage is displaying"

  end
end




end
end
