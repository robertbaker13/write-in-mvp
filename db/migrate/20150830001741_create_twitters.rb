class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :name
      t.string :screen_name
      t.string :uri
      t.string :website
      t.string :profile_img
      t.string :followers, array: true
      t.string :following, array: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
