class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :sequence_id
      t.integer :pageable_id
      t.string :pageable_type
      t.references :subject, index: true

      t.timestamps
    end
    add_index :pages, [:pageable_id, :pageable_type]
  end
end
