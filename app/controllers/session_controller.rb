class SessionController < ApplicationController

  def new
    puts "bateu no create sessionController#new"
  end

  def create

    puts "bateu no create sessionController#create"

    usuario = Usuario.find_by(login: params[:session][:login].downcase)
    
    puts "usuario completo: " + usuario.inspect
    puts "params[:session][:password]: "+params[:session][:password]

    puts "params: "+params.inspect

    if usuario && usuario.authenticate(params[:session][:password])
      
      puts "esta logado"

      log_in usuario
      redirect_back_or usuario
    else    

      puts "nao logou"

      flash[:danger] = "Usuário ou senha inválidos."
      redirect_to login_url
    end
  end  

  def destroy
    log_out
    redirect_to root_url
  end

end
