class Person < ApplicationRecord
  validates :first_name, presence: true
  has_many :articles, foreign_key: :person_id, dependent: :destroy
  belongs_to :country, class_name: 'Country', foreign_key: :country_id

  after_create :retrieve_articles

  private

  def retrieve_articles
    active_sources = Source.where(status: 'active')

    active_sources.each do |source|
      FetchArticlesService.new(source: source, person: self).perform
    end
  end
end