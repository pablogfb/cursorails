class FechaController < ApplicationController
  
  def now
    @fecha= Time.now
  end
end
