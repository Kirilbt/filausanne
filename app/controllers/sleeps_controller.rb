class SleepsController < ApplicationController
  def index
    @sleeps = Service.sleeps.all
  end

  def open?(open, close)
    Time.now.hour > open.hour && Time.now.hour < close.hour ? "Open" : "Closed"
  end

  helper_method :open?
end
