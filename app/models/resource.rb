class Resource < ActiveRecord::Base
  attr_accessible :path, :content

  validates :path, uniqueness: true, presence: true
end
