class SleepsController < ApplicationController
  before_action :set_sleep, only: [:show]

  def index
    @sleeps = Service.sleeps.all
  end

  def show
  end

  def open?(open, close)
    Time.now.hour > open.hour && Time.now.hour < close.hour ? "Open" : "Closed"
  end

  def open_close_time(open, close)
    if open?(open, close) == "Open"
      "Closes at #{close.strftime('%H:%M')}"
    else
      "Opens at #{open.strftime('%H:%M')}"
    end
  end

  helper_method :open?, :open_close_time

  private

  def set_sleep
    @sleep = Sleep.find(params[:id])
  end
end
