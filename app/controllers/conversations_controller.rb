class ConversationsController < ApplicationController
  before_action :require_user

  def index
    all_users_messages
    @conversations = @all_users_messages.group_by { |i| i.conversation_id }
  end

  def show
    @users_messages = users_messages
    @correspondent = correspondent[0]
  end

  #def create
  #  @new_conversation = Conversation.create(sender_id: current_user, recipient_id: @user)
  #  require 'pry';binding.pry
    #@new_conversation = Conversation.new
    #@conversation.sender = current_user
    #@conversation.recipient = @user

  #  if @new_conversation.save
  #    flash[:success] = "You have successfully sent your message."
  #    redirect_to conversation_messages_path(@conversation)

  #  end


    #if Conversation.between(params[:sender_id], params[:recipient_id]).present?
    #  @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    #else
    #  require 'pry';binding.pry
    #  @conversation = Conversation.new(conversation_params)
    #end
    #redirect_to conversation_messages_path(@conversation)
  #end

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