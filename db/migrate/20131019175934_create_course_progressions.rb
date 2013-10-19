class CreateCourseProgressions < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :user, index: true
      t.references :subject, index: true
      t.references :page, index: true
      t.datetime :completed_at

      t.timestamps
    end
  end
end
