class RemoveUserIdFromMessagesAndAddAuthorAndReaderToMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :user_id
    add_column :messages, :author_id, :integer
    add_column :messages, :reader_id, :integer
  end
end
