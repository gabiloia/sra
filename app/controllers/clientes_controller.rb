class ClientesController < ApplicationController

  def index
    @clientes = Cliente.all
  end

  def new
    @cliente = Cliente.new
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def update
    @cliente = Cliente.find(params[:id])
 
    if @cliente.update(cliente_parametros)
      redirect_to @cliente
    else
      render 'edit'
    end
  end

  def create
    @cliente = Cliente.new(cliente_parametros)
	if @cliente.save
	  redirect_to '/clientes'
	else
	  render 'new'
        end
  end

  def show 
    @cliente = Cliente.find(params[:id]) 
    @maquinas = @cliente.maquinas
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy
 
    redirect_to clientes_path
  end

  private
    def cliente_parametros
    
      params.require(:cliente).permit(:nombre, :cuit, :direccion, :localidad, :provincia, :codigo_postal, :limite_credito, :telefono, :celular, :email) 
    
    end

end
