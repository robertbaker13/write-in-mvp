class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
