class DashboardController < ApplicationController

  before_action :logged_in_user

  def home
    puts "testee" 
  end

end

