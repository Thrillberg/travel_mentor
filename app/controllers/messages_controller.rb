class MessagesController < ApplicationController
  before_filter :require_user, only: [:index, :show]

  def create
    conversation = Conversation.find_by_id(params[:conversation_id])
    conversation.add_message(current_user, params[:message][:body])
  end

  private

  def message_params
    params.require(:message).permit(:body, :author_id, :reader_id)
  end
end
