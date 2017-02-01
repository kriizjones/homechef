class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
  end

  def update
    current_user.update_attributes(sanitized_params)
  end

  private

  def sanitized_params
    params.required(:user).permit(:first_name, :last_name, :address, :zip_code, :city, :phone)
  end
end