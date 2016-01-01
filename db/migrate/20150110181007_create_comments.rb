class CreateComments < ActiveRecord::Migration
def change
    create_table :comments do |t|
      t.string :body
      t.references :martial_art, index: true

      t.timestamps
    end
  end
end
