class RemoveModeloFromMaquinas < ActiveRecord::Migration
  def change
  
	remove_column :maquinas, :modelo, :string
	remove_column :maquinas, :imagen, :string
	remove_column :maquinas, :descripcion, :string
  end
end
