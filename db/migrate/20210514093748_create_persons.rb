class CreatePersons < ActiveRecord::Migration[6.1]
  def change
    create_table :persons do |t|
      t.string :first_name
      t.string :second_name
      t.integer :country_id, index:true, foreign_key: true
      t.timestamps
    end
  end
end