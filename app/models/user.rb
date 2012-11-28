require 'valid_email'
class User < ActiveRecord::Base

  validates :name, :mobile_phone, presence: true
  validates :email, presence: true, email: true
  validates :mobile_phone, length: { in: 8..14 }

  validates_uniqueness_of :email, :mobile_phone
  attr_accessible :email, :mobile_phone, :name, :avatar, :file


  mount_uploader :file, AvatarUploader
end
