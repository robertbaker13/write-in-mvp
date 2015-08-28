class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.reference :candidate
      t.integer :endorser_id

      t.timestamps null: false
    end
  end
end
