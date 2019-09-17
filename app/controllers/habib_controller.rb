class HabibController < ApplicationController
  def index
    @id = params['id']
		@page = params['page']
  end
  
  def welcome
	
  end
  
  def login
  end
end