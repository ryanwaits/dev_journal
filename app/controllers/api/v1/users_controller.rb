class Api::V1::UsersController < Api::V1::BaseController
  def show
    user = User.find(@user.id)
    
    respond_with user
  end
end