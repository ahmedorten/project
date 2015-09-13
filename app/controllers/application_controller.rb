class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :fetch_tags

  protected

  def fetch_tags
    @tags = Rails.cache.fetch('Category', :expires_in => 10.minutes) do
      Category.all
    end
  end
   private 
   def prevent
    unless session[:user_id]
      flash[:notice] = "Not Allowed."
      redirect_to(:controller => 'users' ,:action => 'login')
      return false
    else
      return true
    end
     
   end
end
