module ApplicationHelper
	def signed_in?
		if session[:customer_id].nil?
			return
		else
			@current_customer = Customer.find_by_id(session[:customer_id])
		end
	end
	
	def secondsigned_in?
		if session[:instructor_id].nil?
			return
		else
		@current_instructor = Instructor.find_by_id(session[:instructor_id])
 end
end
def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
def euro(amount)
number_to_currency(amount, :unit => '€')
end
end
