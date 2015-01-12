class RemoveResetPasswordTokenToUsers < ActiveRecord::Migration
  def change
    remove_index :users, :reset_password_token
    remove_column :users, :reset_password_token, :string
  end
end
