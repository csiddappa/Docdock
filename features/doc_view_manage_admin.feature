@dock
@view_admin
Feature: view_admin
	As a user
	I should be able to see the list of admins
	So that I can see manage admins

Scenario: view_admin
	Given I am on home page
	When I click on Manage Admin tab
	Then List of admins should be displayed
	When I click on any admin from the list
	Then I should see the profile details on the right side