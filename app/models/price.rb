class Price < ActiveRecord::Base
  	validates :priceOfTicket, presence: true, numericality: {only_integer: false, greater_than_to: 0}
  	validates :zones, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
end
