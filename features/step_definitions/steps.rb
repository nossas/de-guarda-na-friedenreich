Given /^I go to "(.*?)"$/ do |arg1|
  if arg1 == 'homepage'
    visit_path(root_path)
  end
end

When /^I click "(.*?)"$/ do |arg1|
  click_on(arg1)
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)  
end

Then /^I should not see "(.*?)"$/ do |arg1|
  page.should_not have_content(arg1)  
end
