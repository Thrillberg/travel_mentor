class Admin::MessagesController < AdminsController
  def index
    @conversation = Conversation.find(params[:conversation_id])
    @messages = @conversation.messages
    #if @messages.length > 10
    #  @over_ten = true
    #  @messages = @messages[-10..-1]
    #end

    #if params[:m]
    #  @over_ten = false
    #  @messages = @conversation.messages
    #end

    #if @messages.last
    #  if @messages.last.reader_id != current_user.id 
    #    @messages.last.read = true
    #  end
    #end

    #@message = @conversation.messages.new
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy if current_user.admin?
    redirect_to admin_conversation_messages_path
  end
end