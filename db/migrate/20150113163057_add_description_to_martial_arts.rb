class AddDescriptionToMartialArts < ActiveRecord::Migration
  def change
    add_column :martial_arts, :description, :text
  end
end
