require 'spec_helper'

describe Resource do
  it { should validate_uniqueness_of :path }
  it { should validate_presence_of :path }
end
