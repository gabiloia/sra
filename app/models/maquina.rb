class Maquina < ActiveRecord::Base
  belongs_to :cliente
  validates :num_serie, presence: true
  validates :contador, presence: true
  validates :estado, presence: true
end
