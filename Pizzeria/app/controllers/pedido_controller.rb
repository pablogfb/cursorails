class PedidoController < ApplicationController
  
  def nuevoPedido
    @pedido = Pedido.new params[:nombre],params[:direccion],params[:tamano],params[:ingrediente]
  end
  
end
