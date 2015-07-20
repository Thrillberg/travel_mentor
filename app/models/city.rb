class City < ActiveRecord::Base
  validates_presence_of :name

  has_many :user_cities 
  has_many :users, through: :user_cities
end