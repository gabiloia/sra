class CreateMaquinas < ActiveRecord::Migration
  def change
    create_table :maquinas do |t|

      t.timestamps null: false
      t.string :modelo
      t.string :imagen
      t.string :descripcion
      t.references :cliente
    end
  end
end
