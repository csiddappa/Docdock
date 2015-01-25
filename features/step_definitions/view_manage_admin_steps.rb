Given(/^I am on home page$/) do
	@site = "docdock".downcase
  visit @site, :manage_admin
  on @site, :manage_admin do |manageadmin|
  	manageadmin.verify_homepage
  end 
end

When(/^I click on Manage Admin tab$/) do
  @site = "docdock".downcase
  visit @site, :manage_admin
  on @site, :manage_admin do |manageadmin|
  	manageadmin.click_manage_admin
  end
end

Then(/^List of admins should be displayed$/) do
  on @site, :manage_admin do |manageadmin|
  	manageadmin.verify_manage_admin
end
end		

When(/^I click on any admin from the list$/) do
  on @site, :manage_admin do |manageadmin|
    manageadmin.click_view_admin
end
end

Then(/^I should see the profile details on the right side$/) do
  on @site, :manage_admin do |manageadmin|
   puts manageadmin.verify_profile_view
end
end
