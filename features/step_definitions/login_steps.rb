Given(/^I login as a user name "(.*?)" and password "(.*?)"$/) do |user, pwd|
  @site = "docdock".downcase
visit @site, :login_page
on @site, :login_page do |login|
login.enter_user_data user,pwd
end
end

When(/^I click on Sign In button$/) do
  on @site, :login_page do |login|
login.click_sign_in
end
end

Then(/^Home page for the user should be displayed$/) do
  on @site, :login_page do |login|
  	login.verify_homepage
end
end

