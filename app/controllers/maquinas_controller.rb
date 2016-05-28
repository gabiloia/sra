class MaquinasController < ApplicationController


  def show
    @maquina = Maquina.find(params[:id])
  end
end
