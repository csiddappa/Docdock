Given(/^I am on manage admin page$/) do
  #@site = "docdock".downcase
#visit @site, :view_admin_profile
  on @site, :view_admin_profile do |viewadmin|
  	viewadmin.verify_manage_admin
  
end
end

When(/^I click on any admin from the list$/) do
  on @site, :view_admin_profile do |viewadmin|
    viewadmin.click_view_admin
end
end

Then(/^it should display the profile details on the right side$/) do
  on @site, :view_admin_profile do |viewadmin|
  	viewadmin.verify_profile_view
end
end

