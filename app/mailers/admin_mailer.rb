class AdminMailer < ApplicationMailer

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Welcome to Coin API")		
	end

end
