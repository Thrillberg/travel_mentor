require 'spec_helper'

describe ConversationsController do
  describe "POST create" do
    let(:recipient) { Fabricate(:user) }

    context "with authenticated users" do
      let(:current_user) { Fabricate(:user) }
      before { session[:user_id] = current_user.id }

      context "with valid inputs" do
        before do
          post :create, sender_id: current_user.id, recipient_id: recipient.id
        end

        it "redirects to the conversation messages page" do
          expect(response).to redirect_to conversations_path
        end

        it "creates a conversation" do
          expect(Conversation.count).to eq(1)
        end

        it "creates a conversation associated with the sender" do
          expect(Conversation.first.sender).to eq(current_user)
        end

        it "creates a conversation associated with the recipient" do
          expect(Conversation.first.recipient).to eq(recipient)
        end
      end
    end

    context "with unauthenticated users" do
      it "redirects to the sign in path" do
        post :create, recipient_id: recipient.id
        expect(response).to redirect_to sign_in_path
      end
    end

    describe "GET show" do
      it "sets the @conversation for authenticated users" do
        current_user = Fabricate(:user)
        session[:user_id] = current_user.id
        conversation = Fabricate(:conversation, recipient_id: recipient.id, sender_id: current_user.id)
        get :show, id: conversation.id
        expect(assigns(:conversation)).to eq(conversation)
      end

      it "redirects to the user sign in page for unauthenticated users" do
        unauth_user = Fabricate(:user)
        conversation = Fabricate(:conversation, recipient_id: recipient.id, sender_id: unauth_user.id)
        get :show, id: conversation.id
        expect(response).to redirect_to sign_in_path
      end
    end
  end
end