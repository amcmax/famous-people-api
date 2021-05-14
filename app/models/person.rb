class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :first_name, uniqueness: true
  validates :second_name, uniqueness: true
  validates :country, presence: true
  has_many :articles, foreign_key: :person_id
  belongs_to :country, class_name: 'Country', foreign_key: :country_id
end