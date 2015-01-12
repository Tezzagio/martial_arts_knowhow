class RemoveAddEncryptedPasswordToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :encrypted_password, :string
    remove_column :users, :default, :string
    remove_column :users, :,, :string
    remove_column :users, :null, :string
    remove_column :users, :false, :string
  end
end
