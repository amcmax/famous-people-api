class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name, index:true
      t.string :code, index:true
      t.timestamps
    end
  end
end