class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :procesar_antes_de_nada
  after_action :procesar_despues
  
  def procesar_antes_de_nada
    puts "****** Llamada a la aplicación ******"
    @nombreUsuario="Felix"
    @tiempo=Time.now
  end
  
  def procesar_despues
    puts "****** Llamadada al final ******"
    @tiempo= (Time.now-@tiempo)*1000
    puts "El tiempo es"
    puts @tiempo
  end
end
