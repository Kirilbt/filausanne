class SleepsController < ApplicationController
  def index
    @sleeps = Service.sleeps.all
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
end
