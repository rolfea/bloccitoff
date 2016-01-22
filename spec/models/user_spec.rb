require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@example.com", password: "helloworld") }

  it { should have_many(:items) }
end
