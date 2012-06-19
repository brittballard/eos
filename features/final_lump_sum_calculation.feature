Feature: Final Lump Sum Calculation
  I want to make sure that the final lump sum payment is calculated correctly
  The final lump sum should be mils times term_kwh times the agreed upon final lump sum percentage

  Scenario Outline: Calculate Final Lump Sum
    Given I am using the Green Mountain Payment Calculator
    And I fill in "Mils" with <mils>
    And I fill in "Term" with <term>
    And I fill in "Start Date" with <start_date>
    And I fill in "End Date" with <end_date>
    And I fill in "Term Kwh" with <term_kwh>
    And I fill in "Final Lump Sum Percentage" with <final_lump_sum_percentage>
    And I press "Calculate"
    Then I should see a row with month <end_date> and amount <amount>
    
  Examples:
    | mils    | term | start_date | end_date   | term_kwh | final_lump_sum_percentage | amount |
    | 0.005   | 24   | 2012-06-25 | 2014-06-25 | 10000    | 0.1                       | 5.0    |
    | 0.001   | 24   | 2012-06-25 | 2014-06-25 | 10000    | 0.2                       | 2.0    |
