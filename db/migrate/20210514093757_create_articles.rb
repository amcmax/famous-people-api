class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :excerpt
      t.integer :word_count
      t.string :url
      t.integer :source_id, index:true, foreign_key: true
      t.integer :language_id, index:true, foreign_key: true
      t.integer :person_id, index:true, foreign_key: true

      t.timestamps
    end
  end
end