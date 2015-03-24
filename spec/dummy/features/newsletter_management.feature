Feature: Managing a member updates its contact and subscription data
  In order to have contacts tied to local contactable objects
  As anybody
  I want to modify a member record in order to set their subscriptions and contact data

  Background:
    Given I am logged in and authorized for everything
      And a design named "Bobo's Design" exists

  Scenario: creating a newsletter doesn't blow up because of a name collision for routing
    When I go to the newsletters page
     And I follow "New Newsletter"
    Then I should see "New Newsletter"


