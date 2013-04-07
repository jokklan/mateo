class Topic < ActiveRecord::Base
  belongs_to :category
  attr_accessible :title
end
