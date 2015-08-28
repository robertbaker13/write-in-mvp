class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.reference :user
      t.reference :office

      t.timestamps null: false
    end
  end
end
