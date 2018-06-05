class User < ApplicationRecord
  validate :not_unique_name
  validates :username, length: { maximum: 20 }
  validate :unique_email

  def not_unique_name
    if User.find_by(username: self.username)!=nil
      errors.add(:username, "can't have the same username")
    end
  end
  def unique_email
    if User.find_by(email: self.email)!=nil
      errors.add(:email, "can't have the same email")
    end
  end
end
