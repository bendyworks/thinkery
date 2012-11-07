Given /^I am on the Site Index page$/ do
  visit '/resources'
end

Given /^I am on the "(.*?)" Resource page$/ do |resource_path_str|
  resource = Resource.find_by_path(resource_path_str)
  visit resource_path(resource)
end

Given /^I am on the "(.*?)" Edit page$/ do |resource_path_str|
  resource = Resource.find_by_path(resource_path_str)
  visit edit_resource_path(resource)
end

Then /^I should be on the "(.*?)" resource show page$/ do |resource_path|
  resource = Resource.find_by_path(resource_path)
  current_path.should == resource_path(resource)
end
