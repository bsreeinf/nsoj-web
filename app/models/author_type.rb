class AuthorType < ActiveRecord::Base
	has_many :authors

  	def to_s
    	self.title
    end
end
