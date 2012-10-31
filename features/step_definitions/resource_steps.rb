Given /^"(.*?)" resource$/ do |path|
  FactoryGirl.create :resource, path: path
end
