class Resource < ActiveRecord::Base
  attr_accessible :path

  validates :path, uniqueness: true, presence: true
end
