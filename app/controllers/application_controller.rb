class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  # after_action :verify_authorized, except: [:index], unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: [:index], unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  # def after_sign_in_path_for(resource)
  #   if current_user.manager == false && current_user.employee == true
  #     order_rider_orders_path
  #     elsif current_user.manager == false && current_user.employee == false
  #       orders_path
  #   else
  #     dashboards_path
  #   end
  # end
end
