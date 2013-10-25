class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.text :body
      t.text :image
      

      t.timestamps
    end
  end
end
