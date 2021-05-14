class Source < ApplicationRecord
  enum status: [:inactive, :active]

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :base_url, presence: true
  validates :base_url, uniqueness: true
  has_many :articles, foreign_key: :source_id, inverse_of: :source
end