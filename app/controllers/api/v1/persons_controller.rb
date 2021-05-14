module Api::V1
  class PersonsController < ApplicationController

    def index
      @persons = Person.all

      render json: @persons, only: %i[id first_name second_name],
                             include: { articles: { only: %i[id title url word_count source.name], include: { language: { only: %i[name value] } } } }
    end
  end
end