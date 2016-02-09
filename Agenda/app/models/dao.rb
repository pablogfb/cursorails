class Dao
=begin 
  @@listaUsuarios= []
  @@contador=0
  
  def self.alta usuario
    @@contador+=1
    usuario.id= @@contador
    @@listaUsuarios << usuario
  end
  
  def self.listar
    @@listaUsuarios
  end
=end 
@@clientesHash={}
@@id=0

def self.alta usuario
usuario.id=@@id
@@clientesHash[@@id]=usuario
@@id+=1
end

def self.listar
@@clientesHash.values
end

def self.borrar id
  @@clientesHash.delete(id)
end

def self.getClientesById id  
  puts @@clientesHash[id]
  @@clientesHash[id]
end

def self.modificarId usuario
  @@clientesHash[usuario.id]=usuario
end

end