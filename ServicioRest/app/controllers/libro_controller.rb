class LibroController < ApplicationController
  def index
    puts "Aqui se supone que debemos devolver todos los libros"
  end
  
  def new
    puts "Aqui debemos crear un nuevo libro"
  end
  
  def edit
    id= params[:id]
    puts "Aquí debemos editar el libro con #{id}"
    
  end
  
  def show
    id= params[:id]
    puts "se supone que debemos devolver el libro con id #{id}"
    @libro=Libro.new
    @libro.id = id
    @libro.titulo= "Cien años de soledad"
    @libro.autor="Gabriel García Márquez"
    respond_to {
      |format|
        format.json{
          render :json => @libro.to_json
        }
        
        format.html{
          render :index
        }
    }
  end
  def metodo_prueba
    @libro=Libro.new
    @libro.id = 2
    @libro.titulo= "Cien años de soledad"
    @libro.autor="Gabriel García Márquez"
    render :index
  end
    
  
end
