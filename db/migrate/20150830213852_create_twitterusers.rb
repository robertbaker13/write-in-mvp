class CreateTwitterusers < ActiveRecord::Migration
  def change
    create_table :twitterusers do |t|
      t.string :uid
      t.string :nickname
      t.string :name
      t.string :location
      t.string :email
      t.string :image
      t.string :description
      t.string :website
      t.string :twitter
      t.string :token
      t.references :user
      # t.string :followers, array: true
      # t.string :following, array: true


      t.timestamps null: false
    end
  end
end
