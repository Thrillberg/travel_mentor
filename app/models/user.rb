class User < ActiveRecord::Base
  include Tokenable

  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email
  
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :user_cities
  has_many :cities, through: :user_cities

  has_many :conversations, foreign_key: :sender_id
  has_many :messages, foreign_key: :sender_id, class_name: "Message"
  has_many :messages, foreign_key: :recipient_id, class_name: "Message"

  has_secure_password
end