class CreateWatchings < ActiveRecord::Migration
  def change
    create_table :watchings do |t|
      t.integer :observer_id
      t.integer :subject_id

      t.timestamps null: false
    end
    add_index :watchings, [:observer_id, :subject_id], unique: true
  end
end
