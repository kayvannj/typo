require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "html_content"))

Given /^I am logged in as (.*)$/ do |username|
  visit '/accounts/login'
  fill_in 'user_login', :with => username
  fill_in 'user_password', :with => '123123'
  click_button 'Login'
end

Then /^(.*) should not contain (.*)$/ do |page_name,content|
  visit path_to(page_name) 
  assert page.has_no_selector? contains_html(content)
end

Given /^I have merged two articles$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I view the merged article$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see content of both articles$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see one author for article$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see either one of authors$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have comments on article (\d+) and article (\d+)$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I have merge article (\d+) and article (\d+)$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see comments from both articles$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the same title as either articles$/ do
  pending # express the regexp above with the code you wish you had
end
