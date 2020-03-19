class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:succes] = "Dang ki thanh cong"
      redirect_to root_path
    else
      flash[:succes] = "Dang ki khong thanh cong"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit :email, :fullname, :password, :password_digest
  end
end
