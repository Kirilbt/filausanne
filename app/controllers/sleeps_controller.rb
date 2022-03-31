class SleepsController < ApplicationController
  before_action :set_sleep, only: [:show]

  def index
    @sleeps = Service.sleeps.all
  end

  def show
    @markers = {
      lat: @sleep.latitude,
      lng: @sleep.longitude,
      info_window: render_to_string(partial: "shared/info_window", locals: { service: @sleep })
    }
  end

  private

  def set_sleep
    @sleep = Sleep.find(params[:id])
  end
end
