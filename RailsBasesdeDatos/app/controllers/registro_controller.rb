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
    @registro=Registro.create(parametrosHash)
    #Registro.create puede devolverme errores en caso de que haya habido un error al insertar
    if @registro.errors.any?
      puts "BDERROR: Error"
    end
      
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
    @registro = Registro.find params[:id].to_i
    
    #También:
    #@registro=Registro.where(:id =>params[:id].to_i)
    #@registro=@registro.first
  end
  
  def update
    id=params[:id].to_i
    titulo=params[:titulo]
    comentarios=params[:comentarios]
    parametrosHash={}
    parametrosHash[:titulo]=titulo
    parametrosHash[:comentarios]=comentarios
    registro= Registro.find id
    update = registro.update_attributes(parametrosHash)
     #contiene un boolean  de si ha ido bien o no
    #registro contiene el Activerecord con los posibles errores
    if update
      puts 'Registro actualizado'
      index
      render 'index'
    else
      puts 'Registro no actualizado'
      read
      render 'read'
    end
  end
  
  
  def search_comentario
    comentarios = params[:comentarios]
    @registrosEncontrados=Registro.where(:comentarios => comentarios)
    render :busqueda
    
  end
end
