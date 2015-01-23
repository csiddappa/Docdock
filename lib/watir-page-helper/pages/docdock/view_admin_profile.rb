require 'watir-page-helper'

module WatirPageHelper::Docdock
  module ViewAdminProfile
    extend WatirPageHelper::ClassMethods

      #direct_url "http://it.docdock.qwinixtech.com"
     
    def verify_manage_admin
        verify_manageadminpage = @browser.div(:xpath,".//*[@id='div_admin_user_71']/div/div[1]/div")
         verify_manageadminpage.wait_until_present
        if verify_manageadminpage.exists?
          return "manageadminpage is displaying"
      else
         raise Exception.new "manageadminpage is not displaying"
      end 
    end
	
	def click_view_admin
		@browser.a(xpath: "//*[@id='div_admin_user_69']/div/div[1]/div/a").wait_until_present
@browser.a(xpath: "//*[@id='div_admin_user_69']/div/div[1]/div/a").click
end

  def verify_profile_view
  	verify_profileview = @browser.div(xpath: "//*[@id='div_admin_user_details']/div/div[1]/div/div[1]")
verify_profileview.wait_until_present
if verify_profileview.exists?
	return "manage adminprofile page is displaying"

  end
end




end
end
