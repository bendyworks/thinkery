Given /^"(.*?)" resource$/ do |path|
  FactoryGirl.create :resource, path: path
end

Given /^"(.*?)" resource with content "(.*?)"$/ do |path, content|
  FactoryGirl.create :resource, path: path, content: content
end

Then /^a "(.*?)" resource should exist with content "(.*?)"$/ do |path, content|
  matching_resource = Resource.find_by_path_and_content(path, content)
  if matching_resource.nil?
    fail("No resource found with path '#{path}' and content #{content}")
  end
end
