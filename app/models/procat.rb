class Procat < ActiveRecord::Base
  belongs_to :project
  belongs_to :category
end
