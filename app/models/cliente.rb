class Cliente < ActiveRecord::Base
  has_many :maquinas
  validates :nombre, presence: true
  validates :cuit, presence: true,
                   length: { is: 11 }
  validates :direccion, presence: true
  validates :telefono, presence: true
end
