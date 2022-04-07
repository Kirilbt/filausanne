class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @services = Service.all

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { service: service }),
        image_url: helpers.asset_url("pin_#{service.type.downcase}.svg")
      }
    end
  end
end
