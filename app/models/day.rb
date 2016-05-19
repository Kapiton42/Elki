class Day < ActiveRecord::Base
  belongs_to :graphik

  validates :graphik, presence: true, uniqueness: true

  validate :days_validator
 	def days_validator()
 		if (self.monday || self.tuesday || self.wed || self.thursday || self.friday || self.saturday || self.sunday) == false
 			errors[:empty_days] << 'Это, хотяб в один день нужно ехать..!'
 		end
 	end
end
