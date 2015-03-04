class Category < ActiveRecord::Base
  has_many :procats
  has_many :projects, through: :procats
end
