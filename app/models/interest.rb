class Interest < ActiveRecord::Base
  validates_presence_of :name

  has_many :user_interests  
  has_many :users, through: :user_interests
end