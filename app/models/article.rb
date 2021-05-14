class Article < ApplicationRecord
  validates :url, presence: true
  validates :url, uniqueness: true
  belongs_to :person, class_name: 'Person', foreign_key: :person_id
  belongs_to :language, class_name: 'Language', foreign_key: :language_id
  belongs_to :source, class_name: 'Source', foreign_key: :source_id
end