class ChecklistController < ApplicationController

	def index
		gmail = Gmail.connect("ultmdrv@gmail.com", "test4321")
		@emails = gmail.mailbox('to-do').emails
	end

end
