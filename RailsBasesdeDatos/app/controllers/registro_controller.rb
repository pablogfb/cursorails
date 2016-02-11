class RegistroController < ApplicationController
  
  def index
    #registro.all nos devuelve todos los registros de la BD en un array
    #Al heredar de ActiveRecord estarán autmáticamente implementados sus accesos
    @registros= Registro.all
    if @registros.size >0
      puts @registros[0].titulo
      puts @registros.first.id
      puts @registros.last.id
    end
  end
  
  
  def create
    #Creamos un hash con clave-valor para cada atributo
    parametrosHash={}
    parametrosHash[:titulo]=params[:titulo]
    parametrosHash[:comentarios]=params[:comentarios]
    #Pasamos el hash
    Registro.create(parametrosHash)
    #Cargamos index y lo renderizamos
    index
    render 'index'
  end
  
  def delete
    id=params[:id].to_i
    #.delete borra sólo por ID. También le podemos pasar un array de IDs
    Registro.delete id    
   
   #Podemos también borrar por otros campos pero deberemos hacer una búsqueda
=begin
    Esto devuelve una lista de coincidencias
    registrosEncontrados = Registro.where(:titulo =>params[:titulo]) 
    for registro in registrosEncontrados do
      registro.destroy
    end
=end
    index
    render 'index'
  end
  
  def read
    @registro=Registro.where(:id =>params[:id].to_i)
    @registro=@registro.first
  end
  
  def update
    
  end
  
end