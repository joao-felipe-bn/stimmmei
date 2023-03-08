class ApplicationController < ActionController::Base

  include SessionHelper

  private 
  def logged_in_user
    unless logged_in?
      puts "store_location is: #{store_location}"
      store_location
      flash[:danger] = "Para usar o Sistema insira usuário e senha"
      redirect_to login_url
    end
  end

end
