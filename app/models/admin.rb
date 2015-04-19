class Admin < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable

  private
  def user_params
    params.require().permit(:username, :password, :password_confirmation)
  end
end
