class Listin
  
  def initialize
    puts "inicializando"
  end
  
  def alta nombre,apellidos,edad,telefono
    usuario1= Usuario.new nombre,apellidos,edad,telefono
    Dao.alta usuario1
  end
  
  def lista
    @lista = Dao.listar
    @lista
  end
  
  def byId id
    Dao.getClientesById id.to_i
  end
  
  def borrar id
    Dao.borrar id
  end
  
  def modificar id,nombre,apellidos,edad,telefono
    usuario1= Usuario.new nombre,apellidos,edad,telefono
    usuario1.id=id
    Dao.modificarId usuario1
  end
  
end