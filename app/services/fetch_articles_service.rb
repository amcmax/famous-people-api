class FetchArticlesService

  SOURCE_SERVICE = 

  def initialize(options)
    @person = options[:person]
    @source = options[:source]
  end

  def perform
    fetch_articles
  end

  def fetch_articles
    client_service = (@source.name + "::GetArticlesService").classify.constantize
    client_service.new(person: @person).perform
  end
end