class MaquinasController < ApplicationController
  def index
    @maquinas = Maquina.all
  end

  def new
    @maquina = Maquina.new  
  end

  def edit
    @maquina = Maquina.find(params[:id])
  end

  def create
    @maquina = Maquina.new(maquina_params)
 
    if @maquina.save
      redirect_to @maquina
    else
      render 'new'
    end
  end

  def update
    @maquina = Maquina.find(params[:id])
 
    if @maquina.update(maquina_params)
      redirect_to @maquina
    else
      render 'edit'
    end
  end

  def show
    @maquina = Maquina.find(params[:id])
  end
 
  def destroy
    @maquina = Maquina.find(params[:id])
    @maquina.destroy
 
    redirect_to maquinas_path
  end

  private
  def maquina_params
    params.require(:maquina).permit(:num_serie, :contador,:estado)
  end
 
end
