require 'spec_helper'

describe Resource do
  it { should validate_uniqueness_of :path }
  it { should validate_presence_of :path }
  it { should validate_uniqueness_of :title }
  it { should validate_presence_of :title }

  describe 'the factory' do
    it 'creates multiple valid resources' do
      FactoryGirl.create :resource
      FactoryGirl.create(:resource).should be_valid
    end
  end
end
