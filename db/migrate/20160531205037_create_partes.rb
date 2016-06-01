class CreatePartes < ActiveRecord::Migration
  def change
    create_table :partes do |t|

      t.timestamps null: false
    end
  end
end
