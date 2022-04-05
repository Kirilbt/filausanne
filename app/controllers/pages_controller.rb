class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def urgent
    # @services = Service.all
    @urgents = Service.select { |service| service.urgent == true }
  end
end
