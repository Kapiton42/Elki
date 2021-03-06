class Station < ActiveRecord::Base
	has_many :begin_graphik, class_name: "Graphik", foreign_key: "station_begin_id"
  	has_many :end_graphik, class_name: "Graphik", foreign_key: "station_end_id"
  	has_many :time_of_arr
  	has_many :do_not_stop

  	validates :name, presence: true, uniqueness: true
  	validates :tarif_zone, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
  	validates :number, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}, uniqueness: true
end
