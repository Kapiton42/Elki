class DoNotStop < ActiveRecord::Base
  belongs_to :station
  belongs_to :graphik

 validate :further_station_validator
 	def further_station_validator()
 		if (station.number <= graphik.station_begin.number) || (station.number >= graphik.station_end.number)
 			errors[:station] << 'Не стоит не посещать начальную и конечную станции...Да и вне них ты редко побываешь.'
 		end
 	end

  validates :station, presence: true
  validates :graphik, presence: true
end
