module Api::V1
  class PersonsController < ApplicationController

    def index
      @persons = Person.all
      render json: @persons, include: ['articles']
    end

  end
end