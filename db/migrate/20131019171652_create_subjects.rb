class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :section
      t.string :name

      t.timestamps
    end
  end
end
