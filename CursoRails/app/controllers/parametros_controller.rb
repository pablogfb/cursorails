class ParametrosController < ApplicationController
  
  def pasarParametros 
    if params[:nombre] && [:apellido]
      @saludo=  "Hola #{params[:nombre]} #{params[:apellido]}"
    else
      @saludo= "Hola que ase"
    end
  end
end
