# frozen_string_literal: true

class User < ApplicationRecord
  has_many :lessons
  mount_uploader :avatar, AvatarUploader
  has_secure_password

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                     format: { with: VALID_EMAIL_REGEX },
                     uniqueness: { case_sensitive: false }

end
