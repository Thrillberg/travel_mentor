class MessagesController < ApplicationController
  before_filter :require_user, only: [:index, :show]

  def index
    @messages = Message.all
    @users_messages = []
    @messages.each do |message|
      @users_messages << message if (message.author == current_user || message.reader == current_user)
    end
    @conversations = @users_messages.group_by { |i| i.conversation_id }
    #if @messages.length > 10
    #  @over_ten = true
    #  @messages = @messages[-10..-1]
    #end

    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end

    #if @messages.last
    #  if @messages.last.reader_id != current_user.id 
    #    @messages.last.read = true
    #  end
    #end

    #@message = @conversation.messages.new
  end

  def new
    @message = Message.new
  end

  def create
    require 'pry';binding.pry
    @correspondent = ??????
    @message = Message.new(message_params)
    @message.author_id = current_user.id
    @message.reader_id = @correspondent.id
    if @message.save
      redirect_to conversations_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :author_id, :reader_id)
  end

  #def reader
  #  User.where((@message.reader != current_user && @message.author != current_user) && (@message.reader || @message.author))[0]
  #end
end