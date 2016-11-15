class Admin::UsersController < ApplicationController

  def index
    @users = User.filter_by_name(params[:search])
      .page(params[:page]).per Settings.user.perpage
  end

  def update

  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :adress)
    end
end
