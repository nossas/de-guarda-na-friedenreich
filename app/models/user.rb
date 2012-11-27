require 'valid_email'
class User < ActiveRecord::Base

  validates :name, :mobile_phone, presence: true
  validates :email, presence: true, email: true
  validates :mobile_phone, length: { in: 8..14 }

  attr_accessible :email, :mobile_phone, :name, :avatar


  mount_uploader :avatar, AvatarUploader
end
