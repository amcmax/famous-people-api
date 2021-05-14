class Language < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :value, presence: true
  validates :value, uniqueness: true
end