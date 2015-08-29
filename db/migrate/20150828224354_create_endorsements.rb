class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.references :candidate
      t.references :user

      t.timestamps null: false
    end
  end
end
