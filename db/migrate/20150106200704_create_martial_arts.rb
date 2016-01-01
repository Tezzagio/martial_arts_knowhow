class CreateMartialArts < ActiveRecord::Migration
  def change
    create_table :martial_arts do |t|
      t.string :name
      t.string :description
      t.references :user, index: true

      t.timestamps null: false
    end
#    add_foreign_key :martial_arts, :users
  end
end
