class Pizza
  attr_accessor :tamano,:ingrediente,:precio
  def initialize tamano,ingrediente
    @tamano=tamano
    @ingrediente=ingrediente
    @precio=@ingrediente.size*0.9

    case @tamano
    when 'pequeña'
      @precio+=8
    when 'mediana'
      @precio+=12
    when 'grande'
      @precio+=15
    end

  end
  
  def to_s
    "Tamaño: #{@tamano}, Ingredientes: #{@ingrediente}, Precio: #{@precio}"
  end
end