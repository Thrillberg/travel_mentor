class AddConversationAndUserAndReadBooleanToMessagesAndDeleteSubjectFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :subject
    remove_column :messages, :sender_id
    remove_column :messages, :recipient_id
    add_column :messages, :conversation_id, :integer
    add_column :messages, :user_id, :integer
    add_column :messages, :read, :boolean, default: false
  end
end
