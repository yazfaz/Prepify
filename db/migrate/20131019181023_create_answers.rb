class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :result
      t.datetime :correct_at
      t.references :question, index: true
      t.references :course_progression, index: true

      t.timestamps
    end
  end
end
