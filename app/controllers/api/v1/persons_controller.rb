module Api::V1
  class PersonsController < ApplicationController

    def index
      @persons = Person.all

      render json: @persons, only: %i[id first_name second_name],
                             include: { articles: { only: %i[id title url word_count source.name], include: { language: { only: %i[name value] } } } }
    end

    def create
      @persons = Person.create(
        first_name: person_params[:first_name],
        second_name: person_params[:second_name],
        country: Country.find_by(code: person_params[:country])
      )

      if @persons.save!
        render json: @person, status: :created
      else
        render json: @person.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @persons = Person.find(params[:id])
      @persons.destroy
    end

    private

    def person_params
      params
          .require(:person)
          .permit(:id, :first_name, :second_name, :country)
    end
  end
end