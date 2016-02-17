class BibliotecaController < ApplicationController
  def index
    
  end
  
  def alta
    hash={}
    hash[:titulo]=params[:titulo]
    hash[:autor]=params[:autor]
    hash[:genero]=params[:genero]
    @libro=Libro.create hash
    render :index
  end

  def baja
    Libro.delete params[:id].to_i
    render :index
  end

  def modificar
    @modificar= Libro.find params[:id].to_i
    render :index
  end
  
  def guardar
   
    hash={}
    hash[:titulo]=params[:titulo]
    hash[:autor]=params[:autor]
    hash[:genero]=params[:genero]
    libro=Libro.find params[:id].to_i
    libro= libro.update_attributes(hash)
    render :index
  end

  def listar
    @busqueda=Libro.where(params[:metodo]=>params[:dato])
    render :index
  end
    def listartodo
    @busqueda=Libro.all
    render :index
  end
end
