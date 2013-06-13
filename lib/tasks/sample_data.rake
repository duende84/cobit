namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    puts "----------------"
    puts "--- populate ---"
    puts "----------------"

    make_domains
    make_procedures
    make_activities
  end
end

def make_domains

  puts "---------------"
  puts "-- Domains  --"
  puts "---------------"

	@d1 = Domain.create!(name: "Planear y Organizar", code: "PO")
	@d2 = Domain.create!(name: "Adquirir e Implementar", code: "AI")
  @d3 = Domain.create!(name: "Entregar y Soportar", code: "DS")
  @d4 = Domain.create!(name: "Monitorear y Evaluar", code: "ME")
end

def make_procedures

  puts "-----------------"
  puts "-- Procedures  --"
  puts "-----------------"

  @p11 = Procedure.create!(name: "Definir un plan estrategico de TI", code: "PO1", domain: @d1)
  @p12 = Procedure.create!(name: "Definir la arquitectura de la informacion", code: "PO2", domain: @d1)
  @p13 = Procedure.create!(name: "Determinar la direccion tecnologica", code: "PO3", domain: @d1)
  @p14 = Procedure.create!(name: "Definir la Organización y Relaciones de TI", code: "PO4", domain: @d1)

  @p21 = Procedure.create!(name: "Identificar Soluciones", code: "AI1", domain: @d2)
  @p22 = Procedure.create!(name: "Adquirir y Mantener Software de Aplicación", code: "AI2", domain: @d2)
  @p23 = Procedure.create!(name: "Adquirir y Mantener Arquitectura de TI", code: "AI3", domain: @d2)
  @p24 = Procedure.create!(name: "Desarrollar y Mantener Procedimientos relacionadoscon TI", code: "AI4", domain: @d2)

  @p31 = Procedure.create!(name: "Definir niveles de servicio", code: "DS1", domain: @d3)
  @p32 = Procedure.create!(name: "Administrar Servicios de Terceros", code: "DS2", domain: @d3)
  @p33 = Procedure.create!(name: "Administrar Desempeño y Capacidad", code: "DS3", domain: @d3)
  @p34 = Procedure.create!(name: "Asegurar Servicio Continuo", code: "DS4", domain: @d3)

end

def make_activities

  puts "-----------------"
  puts "-- Activities  --"
  puts "-----------------"

  @a111 = Activity.create!(name: "Administración de Valor",code: "PO1.1", procedure: @p11)
  @a112 = Activity.create!(name: "Alineamiento negocio - TI",code: "PO1.2", procedure: @p11)

  @a121 = Activity.create!(name: "Modelo de Arquitectura de Información de la Empresa",code: "PO2.1", procedure: @p12)
  @a122 = Activity.create!(name: "Diccionario de Datos de la empresa y reglas de sintaxis de los datos",code: "PO2.2", procedure: @p12)
end