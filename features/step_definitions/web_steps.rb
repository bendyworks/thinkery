Then /^I should see "(.*?)"$/ do |desired_content|
  page.should have_content(desired_content)
end

Then /^I should not see "(.*?)"$/ do |undesired_content|
  page.should_not have_content(undesired_content)
end

Then /^I should see the navbar$/ do
  page.should have_xpath('//nav/ul')
end

When /^I follow "(.*?)"$/ do |link_text|
  click_link link_text
end

When /^I follow "(.*?)" link$/ do |link_text|
  click_link link_text
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in(field, with: value)
end

When /^I press "(.*?)"$/ do |button_text|
  click_button button_text
end

Then /^"(.*?)" should (?:still )?contain "(.*?)"$/ do |field, value|
  find_field(field).value.should == value
end

When /^I debug$/ do
  debugger
  true
end
