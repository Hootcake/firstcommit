class Usermailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
    default from: "from@example.com"

  layout "mailer"
	def welcome(customer)
	 @customer = customer
	 mail(:to => customer.email, :subject => "Welcome to the blog site")
	end

end
