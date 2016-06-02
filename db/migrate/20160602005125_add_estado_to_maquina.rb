class AddEstadoToMaquina < ActiveRecord::Migration
  def change
  
  add_column :maquinas, :estado, :integer

  end
end
