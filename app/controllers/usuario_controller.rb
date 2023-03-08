class UsuarioController < ApplicationController

  def
    @usuario = Usuario.find(params[:id])
  end

  def new 
    @usuario = Usuario.new
  end 

  #params.require(:user).permit(:name, :email, :password,:password_confirmation)%>

  def usuario_params 
    params.require(:usuario).permit(:login, :nome,:email,:ativo,:senha,:confirmacao_senha)
  end


end
