Then /^I should see "(.*?)"$/ do |desired_content|
  page.should have_content(desired_content)
end
