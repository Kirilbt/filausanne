class SleepsController < ApplicationController
  before_action :set_sleep, only: [:show]

  def index
    @sleeps = Service.sleeps.all
  end

  def show
  end

  private

  def set_sleep
    @sleep = Sleep.find(params[:id])
  end
end
