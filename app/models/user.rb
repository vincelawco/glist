class User < ActiveRecord::Base
	has_many :todo_lists
	has_many :todos
end
