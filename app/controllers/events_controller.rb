class EventsController < ApplicationController
	def create
	  @event = Event.new(event_params)
	  render plain: @event.save
	end
	
	def destroy
	  @event = Event.find(params[:id])
	  render plain: @event.destroy
	end	
	
	private
	  def event_params
		params.require(:Event).permit(:title, :start, :end, :allDay)
	  end	
end
