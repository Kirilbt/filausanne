class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  around_action :switch_locale
  before_action :set_locale, if: :devise_controller?

  def default_url_options
    { locale: I18n.locale }
  end

  def switch_locale(&action)
    # locale = params[:locale] || I18n.default_locale
    I18n.available_locales.map(&:to_s).include?(params[:locale]) ? locale = params[:locale] : I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def set_locale
    # locale = params[:locale] || I18n.default_locale
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number])
  end
end
