class CreateWathcings < ActiveRecord::Migration
  def change
    create_table :wathcings do |t|
      t.integer :subject_id
      t.integer :observer_id

      t.timestamps null: false
    end
  end
end
