class AddDetallesToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :cuit, :string
    add_column :clientes, :direccion, :string
    add_column :clientes, :localidad, :string
    add_column :clientes, :provincia, :string
    add_column :clientes, :codigo_postal, :string
    add_column :clientes, :limite_credito, :decimal
    add_column :clientes, :telefono, :string
    add_column :clientes, :celular, :string
    add_column :clientes, :email, :string
  end
end
