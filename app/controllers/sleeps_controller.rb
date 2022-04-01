class SleepsController < ApplicationController
  before_action :set_sleep, only: [:show]
  before_action :must_be_admin, only: [:edit, :update]

  def index
    @sleeps = Sleep.all
  end

  def show
    @markers = {
      lat: @sleep.latitude,
      lng: @sleep.longitude,
      info_window: render_to_string(partial: "shared/info_window", locals: { service: @sleep })
    }
  end

  def edit
    @sleep = Sleep.find(params[:id])
  end

  def update
    @sleep = Sleep.find(params[:id])
    @sleep.update(sleep_params)

    redirect_to sleep_path(@sleep)
  end

  private

  def sleep_params
    params.require(:sleep).permit(:name, :description, :address, :phone_number, :website, :price, :capacity)
  end

  def set_sleep
    @sleep = Sleep.find(params[:id])
  end

  def must_be_admin
    unless current_user && current_user.admin?
      redirect_to root_path, notice: "You must be an admin to edit the details" # TO TRANSLATE
    end
  end
end
