Given /^I am on the Site Index page$/ do
  visit '/resources'
end

Then /^I should be on the "(.*?)" resource show page$/ do |resource_path|
  resource = Resource.find_by_path(resource_path)
  current_path.should == resource_path(resource)
end
