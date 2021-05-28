class ApplicationController < ActionController::Base
  # ログインした際に遷移先を指定
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      root_path
    when User
      root_path
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # strong parameterで属性(first_nameとlast_name等)をpermitする
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:
      [:last_name, :first_name, :last_name_kana, :first_name_kana, :user_name, :email])
  end
end
