class Project < ActiveRecord::Base

  has_many :procats
  has_many :categories, through: :procats

  has_many :accesses
  has_many :users, through: :accesses

  belongs_to :owner, class_name: 'User',
                    foreign_key: 'owner_id'

end
