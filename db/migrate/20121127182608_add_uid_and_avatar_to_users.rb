class AddUidAndAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :avatar, :string
  end
end
