class Graphik < ActiveRecord::Base
	belongs_to :station_begin, class_name: "Station"
	belongs_to :station_end, class_name: "Station"
	has_one :day
	has_many :timeOfArr
	has_many :doNotStop

	validates :station_begin, presence: true
  	validates :station_end, presence: true

  	validate :equals_station_validator
 	def equals_station_validator()
 		if station_begin == station_end
 			errors[:last_name] << 'Begin and end station can not be equals!'
 		end
 	end
end
