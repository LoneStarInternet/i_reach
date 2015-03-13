class ApplicationController < ActionController::Base
  layout 'i_reach/application'
  helper_method :current_user
  protect_from_forgery
  def current_user
    nil
  end
end
