class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resources)
    "/students/new"
  end
end
