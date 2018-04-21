# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

org_wipro = Organisation.create(name: "Wipro")

org_wipro.cities.create(name: "Bangalore")

city = City.find_by(name: "Bangalore")

location_wipro = city.locations.create(name: "Wipro Electronic City")

unit_wipro_ec1 = location_wipro.units.create(name: "EC-1")
unit_wipro_ec2 = location_wipro.units.create(name: "EC-2")
unit_wipro_ec3 = location_wipro.units.create(name: "EC-3")
unit_wipro_ec4 = location_wipro.units.create(name: "EC-4")
unit_wipro_ec5 = location_wipro.units.create(name: "EC-5")

unit_wipro_ec1.towers.create(name: "TOWER-1")
unit_wipro_ec1.towers.create(name: "TOWER-2")
unit_wipro_ec1.towers.create(name: "TOWER-3")
unit_wipro_ec1.towers.create(name: "TOWER-4")
unit_wipro_ec1.towers.create(name: "UTILITY BLOCK")

unit_wipro_ec2.towers.create(name: "TOWER-5")
unit_wipro_ec2.towers.create(name: "TOWER-6")
unit_wipro_ec2.towers.create(name: "TOWER-7")
unit_wipro_ec2.towers.create(name: "TOWER-7A")
unit_wipro_ec2.towers.create(name: "LEARNING CENTER")
unit_wipro_ec2.towers.create(name: "UTILITY BLOCK")

unit_wipro_ec3.towers.create(name: "TOWER-8")
unit_wipro_ec3.towers.create(name: "TOWER-8A")
unit_wipro_ec3.towers.create(name: "TOWER-8B (GCC)")
unit_wipro_ec3.towers.create(name: "ACCESS CONTROL")
unit_wipro_ec3.towers.create(name: "RECEPTION")


unit_wipro_ec4.towers.create(name: "TOWER-9")
unit_wipro_ec4.towers.create(name: "TOWER-10")
unit_wipro_ec4.towers.create(name: "TOWER-11")
unit_wipro_ec4.towers.create(name: "TOWER-12")
unit_wipro_ec4.towers.create(name: "TOWER-14")
unit_wipro_ec4.towers.create(name: "TOWER-15")
unit_wipro_ec4.towers.create(name: "TOWER-17")
unit_wipro_ec4.towers.create(name: "TOWER-18")
unit_wipro_ec4.towers.create(name: "TOWER-19 (GUEST BLOCK)")
unit_wipro_ec4.towers.create(name: "TOWER-19A")
unit_wipro_ec4.towers.create(name: "TOWER-20 (LEARNING CENTER)")
unit_wipro_ec4.towers.create(name: "TOWER-21 (EBC)")
unit_wipro_ec4.towers.create(name: "TOWER-22 (RECEPTION)")
unit_wipro_ec4.towers.create(name: "TOWER-23")
unit_wipro_ec4.towers.create(name: "MLCP")
unit_wipro_ec4.towers.create(name: "UTILITY BLOCK 1")
unit_wipro_ec4.towers.create(name: "UTILITY BLOCK 2")

unit_wipro_ec5.towers.create(name: "S1")
unit_wipro_ec5.towers.create(name: "S2")