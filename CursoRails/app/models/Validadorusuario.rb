  
class Validadorusuario
  
  def self.validador nombre,pass
    @usuarios=Dao.lista
    puts " el usuario: #{@usuarios}"
    i=0
    for persona in @usuarios
      if persona.nombre == nombre
        break
      end
      i+=1
    end

   if @usuarios[i].password == pass
     @resultado= "Usuario válido"
   else
     @resultado= "Usuario no válido"
   end
   @resultado
  end 
  
end