require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { User.create!(email: "user@example.com", password: "helloworld") }
  let(:my_item) {Item.create!(name: "New Item Name", user: my_user) }

  context "member doing CRUD on an item for their list" do
    # before do
    #   create_session(my_user)
    # end

    describe "ITEM #create" do
      it "increases the number of items by 1" do
        expect{ user :create, user_id: my_user.id, item: {name: "Second Item Name"} }.to change(Item,:count).by(1)
      end

      it "redirects to the user show view" do
        user :create, user_id: my_user.id, item: {name: "Second Item Name"}
        expect(response).to redirect_to [my_user]
      end

      it "returns http success" do
        get :create
        expect(response).to have_http_status(:success)
      end
    end
  end
end
