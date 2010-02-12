Feature: Output

  In order to specify expected output
  As a developer using Cucumber
  I want to use the "I should see" step

  Scenario: Detect subset of one-line output
    When I run ruby -e 'puts "hello world"'
    Then I should see "hello world"

  Scenario: Detect subset of multiline output
    When I run ruby -e 'puts "hello\nworld"'
    Then I should see:
      """
      hello
      """

  Scenario: Detect exact one-line output
    When I run ruby -e 'puts "hello world"'
    Then I should see exactly "hello world\n"

  Scenario: Detect exact multiline output
    When I run ruby -e 'puts "hello\nworld"'
    Then I should see exactly:
      """
      hello
      world

      """
