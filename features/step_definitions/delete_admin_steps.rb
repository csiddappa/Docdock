#Then(/^I should view the admin profile details$/) do
  #@site = "docdock".downcase
#visit @site, :delete_admin
  #on @site, :delete_admin do |deleteadmin|
  #	deleteadmin.verify_profile_view
  #end 
#end

Then(/^I click on any admin user$/) do
	on @site, :delete_admin do |deleteadmin|
		deleteadmin.select_admin
	end
end

Then(/^When I click on delete button in the Admin profile page$/) do
  on @site, :delete_admin do |deleteadmin|
  	deleteadmin.click_delete_admin
end
end

Then(/^the record should get deleted from the list$/) do
  on @site, :delete_admin do |deleteadmin|
  	deleteadmin.verify_delete_admin
end
end
