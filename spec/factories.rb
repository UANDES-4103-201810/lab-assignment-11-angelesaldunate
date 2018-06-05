FactoryBot.define do
  factory :message do
    user nil
    date "2018-06-05"
    content "MyString"
  end
  factory :user do
    username "MyString"
    email "MyString"
    password "MyString"
  end

# Add other factories in here
end