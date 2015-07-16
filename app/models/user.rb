class User < ActiveRecord::Base
  include Tokenable

  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email

  has_secure_password
end