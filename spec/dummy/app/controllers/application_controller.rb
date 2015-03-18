require 'cancan'
class ApplicationController < ActionController::Base
  layout 'i_reach/application'
  helper_method :current_user
  load_and_authorize_resource
  protect_from_forgery
  def current_user
    nil
  end
end
