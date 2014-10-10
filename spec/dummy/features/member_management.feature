Feature: Managing a member updates its contact and subscription data
  In order to have contacts tied to local contactable objects
  As anybody
  I want to modify a member record in order to set their subscriptions and contact data

  Background:
    Given a member "Bob Dole" exists with email "bob@example.com"
    And a mailing list "The Dark Side" exists

Scenario: I can add a subscription to a member
  When I go to member "Bob Dole"'s edit page
  Then I should see "The Dark Side"
  When I check "The Dark Side"
  And I click the "Update Member" button
  Then member "Bob Dole" should be subscribed to "The Dark Side"
