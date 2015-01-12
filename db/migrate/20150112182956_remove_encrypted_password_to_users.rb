class RemoveEncryptedPasswordToUsers < ActiveRecord::Migration
  def change
    remove_index :users, :encrypted_password
    remove_column :users, :encrypted_password, :string
  end
end
