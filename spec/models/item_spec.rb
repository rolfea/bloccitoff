require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create!(name: "New Item Name") }

  describe "attributes" do
    it "should respond to name" do
      expect(item).to respond_to(:name)
    end

    it "should response to references" do
      expect(item).to respond_to(:user_id)
    end
  end
end
