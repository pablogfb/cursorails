class Usuario
  
  attr_reader :nombre,:apellidos,:edad,:telefono
  attr_accessor :id
  
  def initialize nombre,apellidos,edad,telefono
    @nombre=nombre
    @apellidos=apellidos
    @edad=edad
    @telefono=telefono
    @id
  end
  
end