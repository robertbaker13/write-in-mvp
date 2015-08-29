class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :user_id
      t.integer :watching_id
    end
  end
end
