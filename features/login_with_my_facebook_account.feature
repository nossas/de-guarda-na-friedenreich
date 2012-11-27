Feature: Login with my Facebook account
  In order to promote my activity
  As a guide
  I want to login with my Facebook account

  Scenario: 
    Given I go to "the homepage"
    And I click "Entrar com o facebook"
    And I should see "É necessário seu telefone"
    When I click "Participar"
    Then I should see "Obrigado por participar, lhe informamos em breve!"
