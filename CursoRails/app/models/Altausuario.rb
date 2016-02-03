class Altausuario
  def self.alta nombre, pass
    usuarios=Dao.lista
    puts usuarios
    encontrado=false
    usuario= Persona.new nombre,pass
    for persona in usuarios
      if persona.nombre == usuario.nombre
        encontrado = true
      end
    end
    if encontrado == false
        puts "Entrada de usuario #{usuario}"
        Dao.alta usuario
        puts Dao.lista
      return true      
    else
      return false
    end
  end
end