class SessionsController < ApplicationController
  def newCus
  
  end

  def createCus
	customer = Customer.find_by_username( params[:username])
	if customer and customer.authenticate(params[:password])
		session[:customer_id] = customer.id
		redirect_to root_path
	else
		redirect_to login_path, alert: "Invalid customer/password combination"
	end

  end

  def destroyCus
    session[:customer_id] = nil
	redirect_to root_path, notice: "Logged out"
  end

  def newEmp
  end

  def createEmp
	instructor = Instructor.find_by_username( params[:username])
	if instructor and instructor.authenticate(params[:password])
		session[:instructor_id] = instructor.id
		redirect_to root_path
	else
		redirect_to secondlogin_path, alert: "Invalid instructor user/password combination"
	end
  end

  def destroyEmp
	session[:instructor_id] = nil
	redirect_to root_path, notice: "Logged out"
  end
end
