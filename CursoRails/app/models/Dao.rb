class Dao
  @@usuarios= []
  
  def self.alta persona
    @@usuarios << persona
  end
  
  def self.lista
    @@usuarios
  end
end