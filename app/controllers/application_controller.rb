class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_params, if: :devise_controller?

  after_filter :no_cache

  protected

  def configure_permitted_params
    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:username, :password) }
  end

  def no_cache
    response.headers['Cache-Control'] = 'no-cache, no-store, max-age=0, must-revalidate'
    response.headers['Pragma'] = 'no-cache'
    response.headers['Expires'] = 'Fri, 01 Jan 1990 00:00:00 GMT'
    response.headers['Vary'] = 'Accept'
  end
end
