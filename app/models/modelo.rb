class Modelo < ActiveRecord::Base

 has_many: :maquinas
 has_many: :partes
end
