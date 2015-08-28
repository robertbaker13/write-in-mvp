class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :title
      t.reference :district
      t.datetime :election_date

      t.timestamps null: false
    end
  end
end
