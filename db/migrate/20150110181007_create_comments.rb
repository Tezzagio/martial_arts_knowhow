class CreateComments < ActiveRecord::Migration
def change
    create_table :comments do |t|
      t.string :body
      t.references :story, index: true

      t.timestamps
    end
  end
end



  #def change
    #create_table :comments do |t|

      #t.timestamps
    #end
  #end
#end
