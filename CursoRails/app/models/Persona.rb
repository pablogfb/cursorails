class Persona
  attr_accessor :nombre,:password
  def initialize nombre,password
    @nombre=nombre
    @password=password
  end
  
  def to_s
    "Nombre: #{@nombre}, Pass: #{@password}"
  end
end