class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|

      t.timestamps null: false
      t.string :nombre
    end
  end
end
