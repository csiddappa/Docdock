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

Then(/^list of admins should be displayed$/) do
  on @site, :manage_admin do |manageadmin|
  	manageadmin.verify_manage_admin
end
end		