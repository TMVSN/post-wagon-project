class UsersController < ApplicationController
  def new
    @user = User.new
    authorize @user
  end

  def index
    @users = User.all
  end
end
