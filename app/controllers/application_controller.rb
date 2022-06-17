class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %[index show]
    protect_from_forgery with: :exception
     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :admin)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password, :admin)}
          end

  rescue_from CanCan::AccessDenied do |exception|
      redirect_to main_app.root_url, :alert => exception.message
  end
end
