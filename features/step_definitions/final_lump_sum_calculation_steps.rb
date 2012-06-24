Given /^I am using the Green Mountain Payment Calculator$/ do
	visit('/')
	fill_in "user_email", :with=> "douglemme@yahoo.com"
	fill_in "user_password", :with=> "test1234"
	click_button "Sign in"
end

Given /^I fill in "(.*?)" with ([\d|.,-]+)$/ do |arg1, arg2|
  fill_in arg1, :with=>arg2
end

Given /^I press "(.*?)"$/ do |arg1|
  click_button arg1
end

Then /^I should see a row with month ([\d|.,-]+) and amount ([\d|.,-]+)$/ do |arg1, arg2|
  find('tr', text:arg1).should have_content(arg2)
end
