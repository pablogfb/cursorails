class Pedido
  attr_accessor :cliente,:pizza
  def initialize nombre,direccion,tamano,ingrediente
    @cliente= Cliente.new nombre, direccion
    @pizza= Pizza.new tamano,ingrediente  
  end
  
  def to_s
    "El cliente es: #{@cliente}, la pizza elegida es: #{@pizza}"
  end
end