class Registro < ActiveRecord::Base
  
  
  #Con esta linea validamos que no podamos meter un título vacío
  validates_presence_of :titulo, message: 'Título vacío'
  
  #Podemos validad que no se repita un campo
  validates_uniqueness_of :titulo, message: 'El título está repetido'
  
  #Podemos hacer validaciones de tamaño
  validates_length_of :comentarios, :within => 5..20, message: 'El comentario debe tener entre 0 y 20 caracteres'
  
  #Podemos utilizar otras opciones en lugar de :within
  #:minimun Establece un tamaño mínimo
  #:maximun Establece un tamaño máximo
  
  
  #Definir nuestros propios validadores
  
  validate :validacion_titulo_Nota
  
  def validacion_titulo_Nota
    if titulo != nil && titulo == "Nota" then
      errors.add(:titulo, "El título no puede ser Nota")
    end
  end
  
end
