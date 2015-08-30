class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :token
      t.datetime :expires
      t.references :district

      t.timestamps null: false
    end
  end
end
