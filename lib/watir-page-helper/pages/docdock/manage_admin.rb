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
     else
        raise Exception.new "manage adminpage is not displaying"
     end
    end
  
    def click_view_admin
       @browser.a(xpath: "//div[4]/div[1]/div[1]/div[2]/div/div[1]/div/a").wait_until_present
       $ele = @browser.a(xpath: "//div[4]/div[1]/div[1]/div[2]/div/div[1]/div/a").text
       @browser.a(xpath: "//div[4]/div[1]/div[1]/div[2]/div/div[1]/div/a").click
       p "#{$ele}"
    end

    def verify_profile_view
      sleep 5
       @browser.div(xpath: "//div[4]/div[3]/div/div[1]/div/div[1]").wait_until_present
       verify_profileview = @browser.div(xpath: "//div[4]/div[3]/div/div[1]/div/div[1]").text
       p "#{verify_profileview}"
      if verify_profileview.include? $ele

        return "manage #{verify_profileview} page is displaying"
      else
        return "NO"
     end
    end



















  end
end