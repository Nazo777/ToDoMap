class Users::SessionsController < Devise::SessionsController
  def guest
    user = User.guest
    sign_in user
    redirect_to maps_path
  end
end
