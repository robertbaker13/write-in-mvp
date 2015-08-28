class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :twitter_id
      t.string :token
      t.datetime :expires
      t.reference :district

      t.timestamps null: false
    end
  end
end
