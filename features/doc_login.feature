@login
Feature: Login
   As a user
   I want to login as existing user
   So that I can use Docdock application

  @smoke_login
  Scenario: User login for the first time
    Given I login as a user name "darshan" and password "passwordM@1"
    When I click on Sign In button 
    Then Home page for the user should be displayed

 
