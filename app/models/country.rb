class Country < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :persons, foreign_key: :country_id
end