class EventsController < ApplicationController
	def create
	  params['Event']['ip_address'] = request.remote_ip;
	  @event = Event.new(event_params)
	  render plain: @event.save
	end
	
	def destroy
	  @event = Event.find(params[:id])
	  render plain: @event.destroy
	end	
	
	private
	  def event_params
		params.require(:Event).permit(:title, :start_time, :end_time, :all_day, :ip_address)
	  end	
end
