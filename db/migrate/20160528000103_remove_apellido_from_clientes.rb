class RemoveApellidoFromClientes < ActiveRecord::Migration
  def change
    remove_column :clientes, :apellido, :string
  end
end
