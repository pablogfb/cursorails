class ValidadorController < ApplicationController
  

  def validar
    @resultado=Validadorusuario.validador params[:nombre],params[:pass]
    
=begin
    @usuarios=Dao.lista
    puts " el usuario: #{@usuarios}"
    i=0
    for persona in @usuarios
      if persona.nombre == params[:nombre]
        break
      end
      i+=1
    end

   if @usuarios[i].password == params[:pass]
     @resultado= "Usuario válido"
   else
     @resultado= "Usuario no válido"
   end
=end
  end    
=begin   
   if params[:pass]==@usuarios[params[:nombre]]
     @resultado= "Usuario válido"
    else
     @resultado= "Usuario no válido"
    end 
=end

end
