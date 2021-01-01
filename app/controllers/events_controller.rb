class EventsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show ]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @event_user = EventUser.new
    @events = @event.event_users
  end
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render :create
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :day, :start_time, :end_time, :place, :place_url, :levelev_id, :limit, :number, :cost, :text, user_id: current_user.id ).merge(user_id: current_user.id)
  end

end