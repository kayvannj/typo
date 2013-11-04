require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "html_content"))

Given /^I am logged in as (.*)$/ do |username|
  visit '/accounts/login'
  fill_in 'user_login', :with => username
  fill_in 'user_password', :with => '123123'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end

Then /^(.*) should not contain (.*)$/ do |page_name,content|
  visit path_to(page_name) 
  assert page.has_no_selector? contains_html(content)
end

When /^I merge "(.*)" and "(.*)"$/ do |arg1, arg2|
  visit "/admin/content/edit/#{Article.find_by_title(arg1).id}"
  fill_in 'merge_with', :with => Article.find_by_title(arg2).id
  click_button 'merge_button'
end

Then /^I should see content of "(.*)" and "(.*)"$/ do |arg1, arg2|
  if page.respond_to? :should
    page.should have_content("article 1 body")
    page.should have_content("article 2 body")
  else
    assert page.has_content?("article 1 body")
    assert page.has_content?("article 2 body")
  end
end

Given /^I have merged two articles$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I view the merged article$/ do
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

