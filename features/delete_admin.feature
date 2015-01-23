@dock
@delete_admin
Feature: delete_admin
	As a user
	I should be able to see the list of admins
	So that I can see manage admins

Scenario: delete_admin
	Given I am on home page
	When I click on Manage Admin tab
	Then list of admins should be displayed
	When I click on any admin from the list
	Then I should view the admin profile details
	Then When I click on delete button in the Admin profile page
	Then the record should get deleted from the list