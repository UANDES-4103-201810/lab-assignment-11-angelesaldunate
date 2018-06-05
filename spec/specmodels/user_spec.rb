require 'rails_helper'
RSpec.describe User, type: :model do
  it "new user creation with valid attributes" do
    @user = build(:user, username:"Hola9", email: "hola@hola.com")
    expect(@user).to be_valid
  end
  it "new user creation with not unique user names" do
    @user2 = build(:user, email: "email2@email.com")
    expect(@user2).to_not be_valid
  end
  it "new user creation with not unique emails" do
    @user1 = build(:user, username: "Fernando")
    @user2 = build(:user, username: "Francisco")
    expect(@user2).to_not be_valid
  end

  it "new user creation with long username" do
    @user1 = build(:user, username: "Fernando123456789101112131415")
    expect(@user1).to_not be_valid
  end

end