class AddDescriptionToMartialArts < ActiveRecord::Migration
  def change
  begin
    add_column :martial_arts, :description, :text
  rescue => err
    # ignore..
  end
  end
end
