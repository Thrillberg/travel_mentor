require 'spec_helper'

describe UsersController do
  describe "GET new" do
    it "sets @user" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST create" do

    context "successful user registration" do
      it "redirects to home path" do
        post :create, user: Fabricate.attributes_for(:user)
        expect(response).to redirect_to home_path
      end
    end

    context "failed user registration" do
      it "renders the new template" do
        post :create, user: { first_name: "Bob" }
        expect(response).to redirect_to register_path
      end

      it "sets the flash error message" do
        post :create, user: { first_name: "Bob" }
        expect(flash[:error]).to eq("Please fill in all fields.")
      end
    end
  end

  describe "GET show" do
    #it_behaves_like "requires sign in" do
    #  let(:action) { get :show, id: 3 }
    #end

    it "sets @user" do
      set_current_user
      alice = Fabricate(:user)
      get :show, id: alice.id
      expect(assigns(:user)).to eq(alice)
    end
  end
end