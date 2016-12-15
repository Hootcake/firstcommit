class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper
def authorise
 unless signed_in?
 store_location
 redirect_to login_path, :notice => "Please sign in to access this page."
 end
 end
 
 def secondauthorise
	unless secondsigned_in?
	store_location
	redirect_to secondlogin_path, notice: "You must be logged in as an Employee to complete this action"
 end
 end

def index
  @activities = Activity.all
  if params[:search]
    @activities = Activity.search(params[:search]).order("created_at DESC")
  else
    @activities = Activity.all.order("created_at DESC")
  end
end
def store_location
 session[:return_to] = request.fullpath
 end
 
def current_cart
@cart = Cart.find(session[:cart_id])
rescue ActiveRecord::RecordNotFound
@cart = Cart.create
session[:cart_id] = @cart.id
end
end 

