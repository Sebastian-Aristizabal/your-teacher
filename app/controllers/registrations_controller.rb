class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resources)
    "/users/edit"
  end
end
