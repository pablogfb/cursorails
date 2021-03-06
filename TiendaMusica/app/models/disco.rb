class Disco < ActiveRecord::Base
 
  validates_uniqueness_of :nombre, message: 'El nombre debe ser único'
  
  validates_presence_of :nombre, message: 'Nombre vacío'
  validates_presence_of :artista, message: 'Artista vacío'
  validates_presence_of :anio, message: 'Año vacío'
  
   validate :validacion_anio
  
  def validacion_anio
    if anio < 1000 then
      errors.add(:anio, "El año debe ser mayor que 1000")
    end
  end


def to_s
  puts "#{nombre},#{artista},#{anio}"
end

end
