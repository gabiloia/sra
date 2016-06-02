class DeleteAlquiladaFromMaquina < ActiveRecord::Migration
  def change
    remove_column :maquinas, :alquilada, :boolean
  end
end
