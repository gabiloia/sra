class MaquinasController < ApplicationController
  def index
    @maquinas = Maquina.all
  end

  def new
  
  end

  def show
    @maquina = Maquina.find(params[:id])
  end
end
