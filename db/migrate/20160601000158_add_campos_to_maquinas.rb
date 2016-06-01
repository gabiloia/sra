class AddCamposToMaquinas < ActiveRecord::Migration
  def change
  
	add_column :maquinas, :num_serie, :string
	add_column :maquinas, :contador, :integer
	add_column :maquinas, :alquilada, :boolean

  end
end
