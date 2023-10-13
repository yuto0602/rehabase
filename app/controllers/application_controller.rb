class ApplicationController < ActionController::Base
  # config/application_controller.rb

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:occupation_id, :user_name, :last_name, :first_name])
  end

end
