class ConversationsController < ApplicationController
  before_action :require_user

  def index
    @conversations = current_user.conversations.all
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to conversations_path
  end

  private

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end
end