# This is the absolute minimum
FactoryGirl.define do
  factory :resource do
    sequence(:path) {|n| "/example_path#{n}"}
    sequence(:title) {|n| "AutoTitle#{n}"}
  end
end
