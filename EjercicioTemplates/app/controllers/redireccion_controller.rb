class RedireccionController < ApplicationController
  def index
  end

  def mostrar
    @variable= params[:mostrar]
  end

  def irA
    @ruta= params[:irA]
    render @ruta
  end
end
