require 'spec_helper'

describe Conversation do
  it { should have_many(:messages) }
  it { should validate_presence_of(:sender_id) }
  it { should validate_presence_of(:recipient_id) }

  describe "#self.between" do
    it "returns an empty array if there is no conversation between the sender and recipient" do
      expect(Conversation.between(1, 2)).to eq([])
    end

    it "returns a conversation object if there is a conversation between the sender and recipient" do
      conversation = Fabricate(:conversation, sender_id: 1, recipient_id: 2)
      expect(Conversation.between(conversation.sender_id, conversation.recipient_id)).to eq([conversation])
    end

    it "returns the sender_id if there is a conversation between the sender and recipient" do
      conversation = Fabricate(:conversation, sender_id: 1, recipient_id: 2)
      expect(Conversation.between(conversation.sender_id, conversation.recipient_id)[0].sender_id).to eq(conversation.sender_id)
    end

    it "returns the recipient_id if there is a conversation between the sender and recipient" do
      conversation = Fabricate(:conversation, sender_id: 1, recipient_id: 2)
      expect(Conversation.between(conversation.sender_id, conversation.recipient_id)[0].recipient_id).to eq(conversation.recipient_id)
    end
  end
end