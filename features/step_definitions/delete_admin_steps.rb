Then(/^I click on delete button in the Admin profile page$/) do
  #@site = "docdock".downcase
  #visit @site, :delete_admin
  on @site, :delete_admin do |deleteadmin|
  	deleteadmin.click_delete_admin
end
end

Then(/^The record should get deleted from the list$/) do
  on @site, :delete_admin do |deleteadmin|
  puts	deleteadmin.verify_delete_admin
end
end
