class AltaUsuarioController < ApplicationController
  
  def nuevo
    resultado= Altausuario.alta params[:nombre],params[:pass]
    
    if resultado == false
      render error
    end   
=begin
    usuarios=Dao.lista
    puts usuarios
    encontrado=false
    usuario= Persona.new params[:nombre],params[:pass]
    for persona in usuarios
      if persona.nombre == usuario.nombre
        encontrado = true
      end
    end
    if encontrado == false
        puts "Entrada de usuario #{usuario}"
        Dao.alta usuario
        puts Dao.lista
    else
      render "error"
    end
=end    
  end
  
  def error

  end
end
