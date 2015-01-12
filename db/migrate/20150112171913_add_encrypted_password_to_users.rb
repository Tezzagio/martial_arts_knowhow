class AddEncryptedPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encrypted_password, :string
    add_column :users, :default, :string
    add_column :users, :string
    add_column :users, :null, :string
    add_column :users, :false, :string
  end
end
