class DiscoController < ApplicationController
  
  def index
    @listado=Disco.all
  end
  
  def create
    parametrosHash={}
    parametrosHash[:nombre]=params[:nombre]
    parametrosHash[:artista]=params[:artista]
    parametrosHash[:anio]=params[:anio].to_i
    @disco=Disco.create parametrosHash
      if @disco.errors.any?
        puts "BDERROR: Error"
      end
    index
    render :index
  end
  
  def read
    id=params[:id].to_i
    @disco= Disco.find id
  end
  
  def update
    id=params[:id].to_i
    nombre=params[:nombre]
    artista=params[:artista]
    anio=params[:anio].to_i
    parametrosHash={}
    parametrosHash[:nombre]=nombre
    parametrosHash[:artista]=artista
    parametrosHash[:anio]=anio
    parametrosHash[:id]=id
    puts "antes de find"
    disco= Disco.find id
    puts disco
    puts "despues de find"
    update = disco.update_attributes(parametrosHash)
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
  
  def delete
    Disco.delete params[:id]
    index
    render :index
  end
  def search
    if params[:type] == "artista"
      @tipo= "Artista"
      @ruta= "sArtist"
    else
      @tipo= "Año"
      @ruta= "sYear"
    end
  end
  
  def sYear
    @discos= Disco.where(:anio=>params[:dato].to_i)
    render :resultado
  end
  
  def sArtist
    @discos= Disco.where(:artista=>params[:dato])
    render :resultado
  end
  
  def resultado
    
  end
  #Manera alternativa de hacer el formulario
  def new
    @disco=Disco.new
  end
  
  def generate
    Disco.create(ad_params)
    index
    render :index
  end
  def ad_params
      params.require(:disco).permit(:nombre, :artista, :anio)
  end
end
