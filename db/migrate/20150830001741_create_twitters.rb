class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :name
      t.string :screen_name
      t.string :uri
      t.string :uid
      t.string :website
      t.string :profile_img
      t.integer :user_id
      t.string :followers, array: true
      t.string :following, array: true

      t.timestamps null: false
    end
  end
end
