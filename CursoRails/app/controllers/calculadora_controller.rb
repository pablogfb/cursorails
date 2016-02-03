class CalculadoraController < ApplicationController
  def operacion
    @valor1= params[:op1].to_f
    @valor2= params[:op2].to_f
    eval(params[:operador])
  end

  def resultado

  end

  def sumar
    @resultado=@valor1+@valor2
    render "resultado"
  end

  def restar
    @resultado=@valor1-@valor2
    render "resultado"
  end

  def multiplicar
    @resultado=@valor1*@valor2
    render "resultado"
  end

  def dividir
    @resultado=@valor1/@valor2
    render "resultado"
  end

end
