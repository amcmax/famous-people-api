class CreateSources < ActiveRecord::Migration[6.1]
  def change
    create_table :sources do |t|
      t.string :name, index: { unique: true }, null: false
      t.string :base_url
      t.integer :status, default: 0
      t.timestamps
    end
  end
end