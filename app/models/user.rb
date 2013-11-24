class User < ActiveRecord::Base
	has_many :todo_lists
	has_many :todos

	def self.search_email(query)
		where('email = :query', query: "%#{query}%")
	end

end
