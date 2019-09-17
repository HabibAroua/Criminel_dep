class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :principal #name of view
  
  #file:///C:/RailsInstaller/Ruby2.3.3/lib/ruby/gems/2.3.0/gems/devise-4.7.1/app/views/devise/registrations/new.html.erb
  #you should see this link for authenticate
end
