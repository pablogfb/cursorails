class HolaMundoController < ApplicationController
  
  #cada vez que llega una petición web a este controlador se creará
  #un objeto nuevo. Por lo que hay que tener cuidado con las variables
  #de instancia ya que perderemos su valor en cada petición.
  
  @@contador= 0

  def spanish
    I18n.locale = :es
    @saludo= I18n.t 'hello'
  end
  
  def english
    I18n.locale = :en
    @saludo= I18n.t 'hello'
    render 'spanish'  #redirige a otro método
  end
end
