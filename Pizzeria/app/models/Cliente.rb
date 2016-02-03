class Cliente
  attr_accessor :nombre,:direccion
  
  def initialize nombre, direccion
    @nombre= nombre
    @direccion=direccion
  end
  
  def to_s
    "Nombre: #{@nombre}, Dirección: #{@direccion}"
  end
  
end