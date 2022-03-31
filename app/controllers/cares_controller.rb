class CaresController < ApplicationController
  before_action :set_care, only: [:show]

  def index
    @cares = Service.cares.all
  end

  def show
    @markers = {
      lat: @care.latitude,
      lng: @care.longitude,
      info_window: render_to_string(partial: "shared/info_window", locals: { service: @care })
    }
  end

  private

  def set_care
    @care = Care.find(params[:id])
  end
end
