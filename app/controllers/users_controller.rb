class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @events = @user.events
    @event_users = @user.event_users
  end
  
end
