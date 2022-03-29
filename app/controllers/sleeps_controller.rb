class SleepsController < ApplicationController
  def index
    @sleeps = Service.sleeps.all
  end
end
