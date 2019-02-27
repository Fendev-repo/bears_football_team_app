# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it 'is valid with a first name, last name, email and password' do
    user = FactoryBot.create(:user)

    expect(user).to be_valid
  end

  it 'is invalid without a firstname' do
    user = FactoryBot.build(:user, first_name: nil)
    user.valid?

    expect(user.errors[:first_name]).to include("can't be blank")
  end


  it 'is invalid without a lastname' do
    user = FactoryBot.build(:user, last_name: nil)
    user.valid?

    expect(user.errors[:last_name]).to include("can't be blank")
  end

  it 'is invalid without a email address' do
    # This validation taken care of by devise
    user = FactoryBot.build(:user, email: nil)
    user.valid?

    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'it is invalid with a duplicate email address' do
    # This validation taken care of by devise
    user1 = FactoryBot.create(:user, email: 'sample@sample.com')
    user2 = FactoryBot.build(:user, email: 'sample@sample.com')
    user2.valid?

    expect(user2.errors[:email]).to include("has already been taken")
  end
end
