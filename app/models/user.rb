require 'valid_email'
class User < ActiveRecord::Base

  validates :name, :mobile_phone, presence: true
  validates :email, presence: true
  validates :mobile_phone, length: { in: 8..14 }

  validates_uniqueness_of :email
  attr_accessible :email, :mobile_phone, :name, :avatar, :file


  default_scope order('RANDOM()')
  mount_uploader :file, AvatarUploader


  def as_json(options = {})
    { 
      id: self.id,
      name: self.name,
      avatar: self.avatar || self.file.url
    }
  end
end
