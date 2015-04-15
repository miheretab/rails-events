class Event < ActiveRecord::Migration
  def change
	add_column :events, :allDay, :boolean, :default => true
  end
end
