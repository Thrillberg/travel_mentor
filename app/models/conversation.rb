class Conversation
  attr_reader :messages

  def initialize(messages)
    @messages = messages
  end

  # def self.find_by_two_users(user1, user2)
  #   @messages = Message.where("author_id = :user1_id AND reader_id = :user2_id", user1.id, user2.id).or.where("author_id = :user2_id AND reader_id = :user1_id", user1.id, user2.id)
  #   new(@messages)
  # end

  def self.find_by_id(conversation_id)
    @messages = Message.where("conversation_id = ?", conversation_id)
    Conversation.new(@messages)
  end

  def self.find_all_involved_user(user)
    messages = Message.where("author_id = :user_id OR reader_id = :user_id", {user_id: user.id)
  end

  def digest
    # return the last message's body
  end

  def time_stamp_string(current_user)
    # find the correspondence; interperlate correspondent time stamp of last message
  end

  def title(current_user)
    the_other_user = the_other_user(current_user)
    "Your Messages with #{the_other_user.first_name}"
  end

  def the_other_user(current_user)
    # the user that is not the passed in user
  end

  def add_message(current_user)
    the_other_user = the_other_user(current_user)
    conversation_id = @messages.first.conversation_id
    Message.create(author: current_user, reader: the_other_user, conversation_id: conversation_id, body)
  end
end
