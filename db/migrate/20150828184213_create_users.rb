class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.references :district

      t.timestamps null: false
    end
  end
end
