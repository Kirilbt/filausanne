class CaresController < ApplicationController
  def index
    @cares = Service.cares.all
  end
end
