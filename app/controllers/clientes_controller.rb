class ClientesController < ApplicationController

  def index
    @clientes = Cliente.all
  end

  def nuevo
    @clientes = Cliente.new
  end

  def crear
    @clientes = Cliente.new(cliente_parametros)
	if @clientes.save
	  redirect_to '/clientes'
	else
	  render 'nuevo'
        end
  end

  def show 
    @cliente = Cliente.find(params[:id]) 
    @maquinas = @cliente.maquinas
  end

  private
    def cliente_parametros
    
      params.require(:cliente).permit(:nombre, :cuit, :direccion, :localidad, :provincia, :codigo_postal, :limite_credito, :telefono, :celular, :email) 
    
    end

end
