class EventUsersController < ApplicationController

  def new
    @event_user = EventUser.new
  end

  def create
    event_user = EventUser.new(event_user_params)
    if event_user.save
      redirect_to root_path
    else
      render event_path
    end
  end

  private
  def event_user_params
    params.require(:event_user).permit(:text).merge(user_id: current_user.id, event_id: params[:event_id])
  end

end
