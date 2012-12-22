class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #catch cancan exceptions
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
end
