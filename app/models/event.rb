class Event < ActiveRecord::Base
	has_many :event_data 
	validates :title, :presence => true
end
