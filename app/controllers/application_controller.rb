class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name,:role])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name,:role])
  end

  # protected

  # def after_sign_in_path_for(_resource)
  # if user_session
  #   bookings_path
  # else
  #   current_user.role == "Student" ? new_student_path : new_teacher_path
  # end

  #   if User.find(current_user.id).new_record?
  #     bookings_path
  #   else
  #     new_student_path
  #   end
  # end
end
