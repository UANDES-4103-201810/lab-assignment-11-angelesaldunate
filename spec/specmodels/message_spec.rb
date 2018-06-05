require 'rails_helper'
RSpec.describe Message, type: :model do

  it "new message creation" do
    @user = create(:user, username: "Hola6", email: "Hola6@hola6.com")
    @message = create(:message, user_id: @user.id)
    expect(@message).to be_valid
  end
  it "new message creation user_id nil" do
    @user = create(:user, username: "Hola1", email: "Hola1@hola1.com")

    @message = build(:message, user_id: nil)
    expect(@message).to_not be_valid
  end
  it "new message creation user_id non existing" do
    @user = create(:user, username: "Hola2", email: "Hola2@hola2.com")

    @message = build(:message, user_id: @user.id+1234)
    expect(@message).to_not be_valid
  end
end