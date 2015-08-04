class Message < ActiveRecord::Base
  belongs_to :author, :foreign_key => :author_id, class_name: "User"
  belongs_to :reader, :foreign_key => :reader_id, class_name: "User"

  validates_presence_of :body, :conversation_id, :author_id, :reader_id
end