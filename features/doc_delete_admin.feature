@dock
@delete_admin
Feature: delete_admin
	As a user
	I should be able to see the list of admins
	So that I can see manage admins

Scenario: delete_admin
	When I click on Manage Admin tab
	Then List of admins should be displayed
	When I click on any admin from the list
	Then I should see the profile details on the right side
	Then I click on delete button in the Admin profile page
	Then The record should get deleted from the list