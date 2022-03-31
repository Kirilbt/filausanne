class EatsController < ApplicationController
  before_action :set_eat, only: [:show]

  def index
    @eats = Service.eats.all
  end

  def show
    @markers = {
      lat: @eat.latitude,
      lng: @eat.longitude,
      info_window: render_to_string(partial: "shared/info_window", locals: { service: @eat })
    }
  end

  private

  def set_eat
    @eat = Eat.find(params[:id])
  end
end
