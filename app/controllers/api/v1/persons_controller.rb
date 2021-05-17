module Api::V1
  class PersonsController < ApplicationController

    def index
      @persons = Person.all

      render json: @persons, only: %i[id first_name second_name],
                             include: { articles: { only: %i[id title url word_count source.name], include: { language: { only: %i[name value] } } } }
    end

    def create
      country = Country.find_by(code: person_params[:country])
      p country
      @persons = Person.create(
        first_name: person_params[:first_name], 
        second_name: person_params[:second_name], 
        country: country)
      
      if @persons.save!
        render json: @person, status: :created
      else
        render json: @person.errors, status: :unprocessable_entity
      end
    end

    private

    def person_params
      params
          .require(:person)
          .permit(:first_name, :second_name, :country)
    end
  end
end