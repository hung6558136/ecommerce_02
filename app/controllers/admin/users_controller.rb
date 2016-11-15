class Admin::UsersController < ApplicationController
  def index
    @users = User.filter_by_name(params[:search])
      .page(params[:page]).per Settings.user.perpage
  end
end
