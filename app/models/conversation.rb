class Conversation
  attr_reader :messages

  def initialize(messages)
    @messages = messages
  end

  def id
    @messages.first.conversation_id
  end

  def self.find_by_two_users(user1, user2)
    messages = Message.where("author_id = :user1_id AND reader_id = :user2_id", user1.id, user2.id).or.where("author_id = :user2_id AND reader_id = :user1_id", user1.id, user2.id)
    new(messages)
  end

  def self.find_by_id(conversation_id)
    messages = Message.where("conversation_id = ?", conversation_id)
    new(messages)
  end

  def self.find_by_user(user)
    messages = Message.where("author_id = :user_id OR reader_id = :user_id", {user_id: user.id})
    conversation_ids = []
    messages.each { |m| conversation_ids << m.conversation_id }
    conversation_ids = conversation_ids.uniq
    conversations = []
    conversation_ids.each do |c|
      conversations << Conversation.new(Message.where("conversation_id = ?", c))
    end
    conversations
  end

  def digest
    # return the last message's body
  end

  def time_stamp_string(current_user)
    # find the correspondents; interpolate correspondent's name in timestamp of last message
  end

  def title(current_user)
    the_other_user = the_other_user(current_user)
    @title = "Your Messages with #{the_other_user.first_name}"
  end

  def the_other_user(current_user)
    author = @messages.first.author
    reader = @messages.first.reader
    if author = current_user
      reader
    else
      author
    end
  end

  def add_message(current_user, body)
    the_other_user = the_other_user(current_user)
    Message.create(author: current_user, reader: the_other_user, conversation_id: id, body: body)
  end

end