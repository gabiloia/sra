# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


c1 = Cliente.create(nombre: "Alberto")

Maquina.create(modelo: "BizHub 423", descripcion: "", imagen: "imagenes/logoReproAndina.gif", cliente_id: c1.id)
Maquina.create(modelo: "Panasonic 123", descripcion: "white sand beaches", imagen: "imagenes/logoReproAndina.gif", cliente_id: c1.id)
