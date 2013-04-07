class Category < ActiveRecord::Base
  attr_accessible :title, :topics_attributes
  has_many :topics
  accepts_nested_attributes_for :topics, allow_destroy: true
end
