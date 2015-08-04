class ConversationsController < ApplicationController
  before_action :require_user

  def index
    @conversations = Conversation.find_all_involved_user(current_user)
  end

  def show
    @conversation = Conversation.find_by_id(params[:id])
  end

  private

  def correspondent
    correspondents = []
    correspondents << @users_messages.first.author
    correspondents << @users_messages.first.reader
    correspondents.delete(current_user)
    correspondents
  end

  def all_users_messages
    @messages = Message.all
    @all_users_messages = []
    @messages.each do |message|
      if (message.author == current_user || message.reader == current_user)
        @all_users_messages << message
      end 
    end
    @all_users_messages
  end

  def users_messages
    @messages = Message.where(conversation_id: params[:id])
    @users_messages = []
    @messages.each do |message|
      if (message.author == current_user || message.reader == current_user)
        @users_messages << message
      end 
    end
    @users_messages
  end

end
