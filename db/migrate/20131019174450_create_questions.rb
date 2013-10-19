class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      
      t.text :choices
      t.text :answers
      t.text :explanation

      t.timestamps
    end
  end
end
