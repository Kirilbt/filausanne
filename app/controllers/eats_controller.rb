class EatsController < ApplicationController
  before_action :set_eat, only: [:show]

  def index
    @eats = Service.eats.all
  end

  def show
  end

  private

  def set_eat
    @eat = Eat.find(params[:id])
  end
end
