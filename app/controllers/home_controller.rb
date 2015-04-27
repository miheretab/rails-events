class HomeController < ApplicationController
  def index
	@events = []
	Event.where(:ip_address => '127.0.0.1').each do |event|
		@events << {'id' => event.id, 'title' => event.title, 'start' => event.start_time, 'end' => event.end_time, 'allDay' => event.all_day}
	end
  end
end
