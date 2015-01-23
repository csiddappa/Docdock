
@manage_admin

Feature: Admin_page
As a user
I should be able to see the list of admins
So that I can manage admins

Scenario: List of Admins
Given I am on home page
When I click on Manage Admin tab
Then list of admins should be displayed


