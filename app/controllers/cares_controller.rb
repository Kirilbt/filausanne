class CaresController < ApplicationController
  before_action :set_care, only: [:show]

  def index
    @cares = Service.cares.all
  end

  def show
  end

  private

  def set_care
    @care = Care.find(params[:id])
  end
end
