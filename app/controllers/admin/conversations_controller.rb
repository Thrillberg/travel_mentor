class Admin::ConversationsController < AdminsController
  def index
    @conversations = Conversation.all
  end
end