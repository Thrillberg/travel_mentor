def set_current_user(user = nil)
  session[:user_id] = (user || Fabricate(:user)).id
end

def set_conversation(conversation = nil)
  post :create, recipient_id: recipient.id, sender_id: current_user.id
end