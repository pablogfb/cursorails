class Libro < ActiveRecord::Base
  validates_uniqueness_of :titulo, message: 'Título repetido'
  validates_presence_of :titulo, message: 'Es necesario incluir un título'
  validates_presence_of :autor, message: 'Es necesario incluir un autor'
end
