class HomeController < ApplicationController
  def index
	@events = Event.all.to_json
	@events = Event.select('id, title, start, end').to_json
  end
end
