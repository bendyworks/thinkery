Then /^I should see "(.*?)"$/ do |desired_content|
  page.should have_content(desired_content)
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
