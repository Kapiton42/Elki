class Station < ActiveRecord::Base
	has_many :begin_graphik, class_name: "Graphik", foreign_key: "station_begin_id"
  	has_many :end_graphik, class_name: "Graphik", foreign_key: "station_end_id"
  	has_many :timeOfArr
  	has_many :doNotStop

  	validates :name, presence: true, length: {maximum: 64}, uniqueness: true
  	validates :tarifZone, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
  	validates :number, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}, uniqueness: true
end
