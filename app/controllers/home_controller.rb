class HomeController < ApplicationController
  def index
	@events = []
	Event.where(:ip_address => request.remote_ip).each do |event|
		@events << {'id' => event.id, 'title' => event.title, 'start' => event.start_time, 'end' => event.end_time, 'allDay' => event.all_day}
	end
  end
end
