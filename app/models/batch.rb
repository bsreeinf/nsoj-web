class Batch < ActiveRecord::Base
	def to_s
		self.year
	end
end
