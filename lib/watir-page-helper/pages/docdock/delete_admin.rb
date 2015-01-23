require 'watir-page-helper'

module WatirPageHelper::Docdock
  module DeleteAdmin
    extend WatirPageHelper::ClassMethods
    
    direct_url "http://it.docdock.qwinixtech.com"
     
     #verify_profileview = @browser.td(:xpath,"//tr[3]/td[1]")
         #verify_profileview.wait_until_present
        #if verify_profileview.exists?
          #return "profileview is displaying"
      #else
         #raise Exception.new "profileview is not displaying"
      #end 
    #end
	
  def select_admin
    @browser.div(xpath: "//div[1]/div[1]/div[2]/div/div[1]")
    @browser.div(xpath: "//div[1]/div[1]/div[2]/div/div[1]").click
  end

      def click_delete_admin
      	@browser.a(xpath: "//div[3]/a[2]").wait_until_present
@browser.a(xpath: "//div[3]/a[2]").click
end
  
def verify_delete_admin
	@browser.div(xpath: "//div[2]/div[4]/div[1]/div").wait_until_present
  @browser.div(xpath: "//div[2]/div[4]/div[1]/div").exists?

end


  end
end
