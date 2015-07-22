class MessagesController < ApplicationController
  before_filter :require_user, only: [:index, :show]

  def index
    @conversation = Conversation.find(params[:conversation_id])
    @messages = @conversation.messages
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
    @messsage = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :author_id, :reader_id)
  end
end