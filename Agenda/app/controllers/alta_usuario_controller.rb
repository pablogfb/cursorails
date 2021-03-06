require_relative '../models/Listin.rb'

class AltaUsuarioController < ApplicationController
  
  def initialize
    @agen = Listin.new
  end

  def index

    if params[:boton] == "Alta"
         @agen.alta params[:nombre],params[:apellidos],params[:edad],params[:telefono]
    elsif params[:boton] == "modificar"
         @agen.modificar params[:id].to_i,params[:nombre],params[:apellidos],params[:edad],params[:telefono]
         
    end   
    @listausuarios= @agen.lista
  end
  
  def detalle 
      # @detalle=@agen.lista[(params[:id].to_i)-1]
      
      @detalle=@agen.byId params[:id]
  end
  
  def borrar
    @agen.borrar params[:id].to_i
    index
    render :index
  end
  
  def modificar
    @usuario=@agen.byId params[:id]
  end
  
end
