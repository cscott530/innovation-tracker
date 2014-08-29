class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

#TODO we might want to reinstate this once the app has a real front-end.
  skip_before_action :verify_authenticity_token
end
