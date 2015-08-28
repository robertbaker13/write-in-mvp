class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.references :user
      t.integer :office_id

      t.timestamps null: false
    end
  end
end
