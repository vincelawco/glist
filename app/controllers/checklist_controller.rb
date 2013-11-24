class ChecklistController < ApplicationController

	def index
		@user = User.search_email(params[:e])
	end

	def todo
		email = params[:e]
		user_id = User.where(email: params[:e])
		@user = User.where(id: user_id)
		@todo = Todo.where(user_id: user_id)
	end

	def import
		gmail = Gmail.connect(params[:e], params[:p].first)
		@import = gmail.mailbox('to-do').emails
		# @todo = gmail.mailbox('to-do').emails
		# first_email = @emails.first.subject
		# first_todo = Todo.create(subject: first_email)
		# tim = User.new
		# tim.save
		# tim.todos << first_todo
		# @user = User.find(params[:id])
	end

end
