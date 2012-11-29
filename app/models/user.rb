require 'valid_email'
class User < ActiveRecord::Base

  validates :name, :mobile_phone, presence: true
  validates :email, presence: true
  validates :mobile_phone, length: { in: 8..14 }

  validates_uniqueness_of :email
  attr_accessible :email, :mobile_phone, :name, :avatar, :file


  default_scope order('created_at DESC')
  mount_uploader :file, AvatarUploader

end
