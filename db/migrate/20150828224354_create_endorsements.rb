class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.integer :endorser_id
      t.integer :endorsee_id

      t.timestamps null: false
    end
  end
end
