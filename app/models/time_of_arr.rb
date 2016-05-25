class TimeOfArr < ActiveRecord::Base
  belongs_to :station
  belongs_to :graphik

  validate :further_station_validator
 	def further_station_validator()
 		if (station.number < graphik.station_begin.number) || (station.number > graphik.station_end.number)
 			errors[:station] << 'Нельзя прибыть дальше конченой или начальной станции.'
 		end
 	end

 	validates :station, presence: true
  	validates :graphik, presence: true, uniqueness: {scope: [:station]}
end
