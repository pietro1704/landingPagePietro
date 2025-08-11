class ApplicationController < ActionController::Base
  helper_method :admin_signed_in?

  def admin_signed_in?
    current_user.respond_to?(:admin?) && current_user.admin?
  end
end
