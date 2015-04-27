class EventAddIpAddressField < ActiveRecord::Migration
  def change
	add_column :events, :ip_address, :string, :default => '127.0.0.1'
  end
end
