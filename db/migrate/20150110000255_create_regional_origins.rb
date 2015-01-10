class CreateRegionalOrigins < ActiveRecord::Migration
  def change
    create_table :regional_origins do |t|

      t.timestamps
    end
  end
end
