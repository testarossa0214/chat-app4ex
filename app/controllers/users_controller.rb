class UsersController < ApplicationController
  def edit
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def update
    current_user.update(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
