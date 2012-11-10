class Resource < ActiveRecord::Base
  attr_accessible :path, :title, :content

  validates :path, uniqueness: true, presence: true
  validates :title, uniqueness: true, presence: true
end
