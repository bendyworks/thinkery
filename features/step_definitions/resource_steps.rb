Given /^"(.*?)" resource with title "(.*?)"$/ do |path, title|
  FactoryGirl.create :resource, path: path, title: title
end

Given /^"(.*?)" resource with content "(.*?)" and title "(.*?)"$/ do |path, title, content|
  FactoryGirl.create :resource, path: path, title: title, content: content
end

Then /^a "(.*?)" resource should exist with content "(.*?)"$/ do |path, content|
  matching_resource = Resource.find_by_path_and_content(path, content)
  if matching_resource.nil?
    fail("No resource found with path '#{path}' and content '#{content}'")
  end
end

Then /^a "(.*?)" resource should exist with title "(.*?)"$/ do |path, title|
  matching_resource = Resource.find_by_path_and_title(path, title)
  if matching_resource.nil?
    fail("No resource found with path '#{path}' and title '#{title}'")
  end
end

Then /^the "(.*?)" resource should not exist$/ do |path|
  matching_resource = Resource.find_by_path(path)
  matching_resource.should be_nil, "Resource with path '#{path}' still exists - deletion failed"
end
