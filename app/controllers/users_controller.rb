class UsersController < ApplicationController
  def show
    if User.exists?(params[:id])
      @user = User.find(params[:id])
    end   
  end
end
