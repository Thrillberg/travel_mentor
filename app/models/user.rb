class User < ActiveRecord::Base
  include Tokenable
  include Gravtastic
  gravtastic

  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email
  
  has_many :user_interests
  has_many :interests, through: :user_interests

  has_many :user_cities 
  has_many :cities, through: :user_cities

  has_many :following_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :leading_relationships, class_name: "Relationship", foreign_key: :leader_id

  has_many :sent_conversations, foreign_key: :sender_id, class_name: "Conversation"
  has_many :received_conversations, foreign_key: :recipient_id, class_name: "Conversation"
  
  has_many :messages, foreign_key: :author_id, class_name: "Message"
  has_many :messages, foreign_key: :reader_id, class_name: "Message"
  has_many :authored_messages, foreign_key: :author_id, class_name: "Message"
  has_many :read_messages, foreign_key: :reader_id, class_name: "Message"

  has_secure_password

  def conversations
    Conversation.where("sender_id = ? OR recipient_id = ?", id, id)
  end

  def follows?(another_user)
   following_relationships.pluck(:leader_id).include?(another_user.id) 
  end

  def follow(another_user)
    following_relationships.create(leader: another_user) if can_follow?(another_user)
  end

  def can_follow?(another_user)
    !(self.follows?(another_user) || self == another_user)
  end

end