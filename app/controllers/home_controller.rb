class HomeController < ApplicationController
  def index
	@events = []
	Event.select('id, title, start_time, end_time, all_day').each do |event|
		@events << {'id' => event.id, 'title' => event.title, 'start' => event.start_time, 'end' => event.end_time, 'allDay' => event.all_day}
	end
  end
end
