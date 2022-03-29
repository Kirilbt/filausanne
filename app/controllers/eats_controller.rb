class EatsController < ApplicationController
  def index
    @eats = Service.eats.all
  end
end
