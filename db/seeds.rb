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

unit_wipro_ec1_tower1 = unit_wipro_ec1.towers.create(name: "TOWER-1")
unit_wipro_ec1_tower2 = unit_wipro_ec1.towers.create(name: "TOWER-2")
unit_wipro_ec1_tower3 = unit_wipro_ec1.towers.create(name: "TOWER-3")
unit_wipro_ec1_tower4 = unit_wipro_ec1.towers.create(name: "TOWER-4")
unit_wipro_ec1_tower_utility_blk = unit_wipro_ec1.towers.create(name: "UTILITY BLOCK")

unit_wipro_ec2_tower5 = unit_wipro_ec2.towers.create(name: "TOWER-5")
unit_wipro_ec2_tower6 = unit_wipro_ec2.towers.create(name: "TOWER-6")
unit_wipro_ec2_tower7 = unit_wipro_ec2.towers.create(name: "TOWER-7")
unit_wipro_ec2_tower7A = unit_wipro_ec2.towers.create(name: "TOWER-7A")
unit_wipro_ec2_tower_learning_center = unit_wipro_ec2.towers.create(name: "LEARNING CENTER")
unit_wipro_ec2_tower_utility_blk = unit_wipro_ec2.towers.create(name: "UTILITY BLOCK")

unit_wipro_ec3_tower8 = unit_wipro_ec3.towers.create(name: "TOWER-8")
unit_wipro_ec3_tower8A = unit_wipro_ec3.towers.create(name: "TOWER-8A")
unit_wipro_ec3_tower8B = unit_wipro_ec3.towers.create(name: "TOWER-8B (GCC)")
unit_wipro_ec3_tower_AC = unit_wipro_ec3.towers.create(name: "ACCESS CONTROL")
unit_wipro_ec3_tower_reception = unit_wipro_ec3.towers.create(name: "RECEPTION")


unit_wipro_ec4_tower9 = unit_wipro_ec4.towers.create(name: "TOWER-9")
unit_wipro_ec4_tower10 = unit_wipro_ec4.towers.create(name: "TOWER-10")
unit_wipro_ec4_tower11 = unit_wipro_ec4.towers.create(name: "TOWER-11")
unit_wipro_ec4_tower12 = unit_wipro_ec4.towers.create(name: "TOWER-12")
unit_wipro_ec4_tower14 = unit_wipro_ec4.towers.create(name: "TOWER-14")
unit_wipro_ec4_tower15 = unit_wipro_ec4.towers.create(name: "TOWER-15")
unit_wipro_ec4_tower17 = unit_wipro_ec4.towers.create(name: "TOWER-17")
unit_wipro_ec4_tower18 = unit_wipro_ec4.towers.create(name: "TOWER-18")
unit_wipro_ec4_tower19 = unit_wipro_ec4.towers.create(name: "TOWER-19 (GUEST BLOCK)")
unit_wipro_ec4_tower19A = unit_wipro_ec4.towers.create(name: "TOWER-19A")
unit_wipro_ec4_tower20 = unit_wipro_ec4.towers.create(name: "TOWER-20 (LEARNING CENTER)")
unit_wipro_ec4_tower21 = unit_wipro_ec4.towers.create(name: "TOWER-21 (EBC)")
unit_wipro_ec4_tower22 = unit_wipro_ec4.towers.create(name: "TOWER-22 (RECEPTION)")
unit_wipro_ec4_tower23 = unit_wipro_ec4.towers.create(name: "TOWER-23")
unit_wipro_ec4_tower_mlcp = unit_wipro_ec4.towers.create(name: "MLCP")
unit_wipro_ec4_tower_utility_blk1 = unit_wipro_ec4.towers.create(name: "UTILITY BLOCK 1")
unit_wipro_ec4_tower_utility_blk2 = unit_wipro_ec4.towers.create(name: "UTILITY BLOCK 2")

unit_wipro_ec5_tower_s1 = unit_wipro_ec5.towers.create(name: "S1")
unit_wipro_ec5_tower_s2 = unit_wipro_ec5.towers.create(name: "S2")

unit_wipro_ec1_tower1.floors.create(name: "0F")
unit_wipro_ec1_tower1.floors.create(name: "1F")
unit_wipro_ec1_tower1.floors.create(name: "2F")
unit_wipro_ec1_tower1.floors.create(name: "3F")


unit_wipro_ec1_tower2.floors.create(name: "0F")
unit_wipro_ec1_tower2.floors.create(name: "1F")
unit_wipro_ec1_tower2.floors.create(name: "2F")
unit_wipro_ec1_tower2.floors.create(name: "3F")

unit_wipro_ec1_tower3.floors.create(name: "0F")
unit_wipro_ec1_tower3.floors.create(name: "1F")
unit_wipro_ec1_tower3.floors.create(name: "2F")
unit_wipro_ec1_tower3.floors.create(name: "3F")

unit_wipro_ec1_tower4.floors.create(name: "0F")
unit_wipro_ec1_tower4.floors.create(name: "1F")
unit_wipro_ec1_tower4.floors.create(name: "2F")
unit_wipro_ec1_tower4.floors.create(name: "3F")
unit_wipro_ec1_tower4.floors.create(name: "4F")
unit_wipro_ec1_tower4.floors.create(name: "5F")

unit_wipro_ec1_tower_utility_blk.floors.create(name: "0F")
unit_wipro_ec1_tower_utility_blk.floors.create(name: "1F")


unit_wipro_ec2_tower5.floors.create(name: "0F")
unit_wipro_ec2_tower5.floors.create(name: "1F")
unit_wipro_ec2_tower5.floors.create(name: "2F")
unit_wipro_ec2_tower5.floors.create(name: "3F")


unit_wipro_ec2_tower6.floors.create(name: "0F")
unit_wipro_ec2_tower6.floors.create(name: "1F")
unit_wipro_ec2_tower6.floors.create(name: "2F")
unit_wipro_ec2_tower6.floors.create(name: "3F")

unit_wipro_ec2_tower7.floors.create(name: "0F")
unit_wipro_ec2_tower7.floors.create(name: "1F")
unit_wipro_ec2_tower7.floors.create(name: "2F")
unit_wipro_ec2_tower7.floors.create(name: "3F")

unit_wipro_ec2_tower7A.floors.create(name: "0F")
unit_wipro_ec2_tower7A.floors.create(name: "1F")

unit_wipro_ec2_tower_learning_center.floors.create(name: "0F")
unit_wipro_ec2_tower_learning_center.floors.create(name: "1F")

unit_wipro_ec2_tower_utility_blk.floors.create(name: "0F")
unit_wipro_ec2_tower_utility_blk.floors.create(name: "1F")



unit_wipro_ec3_tower8.floors.create(name: "0F")
unit_wipro_ec3_tower8.floors.create(name: "1F")
unit_wipro_ec3_tower8.floors.create(name: "2F")
unit_wipro_ec3_tower8.floors.create(name: "3F")
unit_wipro_ec3_tower8.floors.create(name: "4F")
unit_wipro_ec3_tower8.floors.create(name: "5F")
unit_wipro_ec3_tower8.floors.create(name: "6F")


unit_wipro_ec3_tower8A.floors.create(name: "0F")
unit_wipro_ec3_tower8A.floors.create(name: "1F")
unit_wipro_ec3_tower8A.floors.create(name: "2F")

unit_wipro_ec3_tower8B.floors.create(name: "0F")


unit_wipro_ec3_tower_AC.floors.create(name: "0F")
unit_wipro_ec3_tower_reception.floors.create(name: "0F")




unit_wipro_ec4_tower9.floors.create(name: "0F")
unit_wipro_ec4_tower9.floors.create(name: "1F")
unit_wipro_ec4_tower9.floors.create(name: "2F")
unit_wipro_ec4_tower9.floors.create(name: "3F")


unit_wipro_ec4_tower10.floors.create(name: "0F")
unit_wipro_ec4_tower10.floors.create(name: "1F")
unit_wipro_ec4_tower10.floors.create(name: "2F")
unit_wipro_ec4_tower10.floors.create(name: "3F")

unit_wipro_ec4_tower11.floors.create(name: "0F")
unit_wipro_ec4_tower11.floors.create(name: "1F")
unit_wipro_ec4_tower11.floors.create(name: "2F")
unit_wipro_ec4_tower11.floors.create(name: "3F")


unit_wipro_ec4_tower12.floors.create(name: "0F")
unit_wipro_ec4_tower12.floors.create(name: "1F")
unit_wipro_ec4_tower12.floors.create(name: "2F")
unit_wipro_ec4_tower12.floors.create(name: "3F")

unit_wipro_ec4_tower14.floors.create(name: "0F")
unit_wipro_ec4_tower14.floors.create(name: "1F")
unit_wipro_ec4_tower14.floors.create(name: "2F")
unit_wipro_ec4_tower14.floors.create(name: "3F")

unit_wipro_ec4_tower15.floors.create(name: "0F")
unit_wipro_ec4_tower15.floors.create(name: "1F")
unit_wipro_ec4_tower15.floors.create(name: "2F")
unit_wipro_ec4_tower15.floors.create(name: "3F")

unit_wipro_ec4_tower17.floors.create(name: "0F")
unit_wipro_ec4_tower17.floors.create(name: "1F")
unit_wipro_ec4_tower17.floors.create(name: "2F")


unit_wipro_ec4_tower18.floors.create(name: "0F")
unit_wipro_ec4_tower18.floors.create(name: "1F")
unit_wipro_ec4_tower18.floors.create(name: "2F")


unit_wipro_ec4_tower19.floors.create(name: "0F")
unit_wipro_ec4_tower19.floors.create(name: "1F")
unit_wipro_ec4_tower19.floors.create(name: "2F")
unit_wipro_ec4_tower19.floors.create(name: "3F")

unit_wipro_ec4_tower19A.floors.create(name: "0F")
unit_wipro_ec4_tower19A.floors.create(name: "1F")


unit_wipro_ec4_tower20.floors.create(name: "0F")
unit_wipro_ec4_tower20.floors.create(name: "1F")
unit_wipro_ec4_tower20.floors.create(name: "2F")

unit_wipro_ec4_tower21.floors.create(name: "0F")
unit_wipro_ec4_tower21.floors.create(name: "1F")


unit_wipro_ec4_tower22.floors.create(name: "0F")


unit_wipro_ec4_tower23.floors.create(name: "0F")
unit_wipro_ec4_tower23.floors.create(name: "1F")
unit_wipro_ec4_tower23.floors.create(name: "2F")
unit_wipro_ec4_tower23.floors.create(name: "3F")

unit_wipro_ec4_tower_mlcp.floors.create(name: "0F")
unit_wipro_ec4_tower_mlcp.floors.create(name: "1F")
unit_wipro_ec4_tower_mlcp.floors.create(name: "2F")
unit_wipro_ec4_tower_mlcp.floors.create(name: "3F")
unit_wipro_ec4_tower_mlcp.floors.create(name: "4F")


unit_wipro_ec4_tower_utility_blk1.floors.create(name: "0F")
unit_wipro_ec4_tower_utility_blk1.floors.create(name: "1F")

unit_wipro_ec4_tower_utility_blk2.floors.create(name: "0F")
unit_wipro_ec4_tower_utility_blk2.floors.create(name: "1F")


unit_wipro_ec5_tower_s1.floors.create(name: "0F")
unit_wipro_ec5_tower_s1.floors.create(name: "1F")
unit_wipro_ec5_tower_s1.floors.create(name: "2F")
unit_wipro_ec5_tower_s1.floors.create(name: "3F")
unit_wipro_ec5_tower_s1.floors.create(name: "4F")
unit_wipro_ec5_tower_s1.floors.create(name: "5F")
unit_wipro_ec5_tower_s1.floors.create(name: "6F")
unit_wipro_ec5_tower_s1.floors.create(name: "7F")
unit_wipro_ec5_tower_s1.floors.create(name: "8F")
unit_wipro_ec5_tower_s1.floors.create(name: "9F")

unit_wipro_ec5_tower_s2.floors.create(name: "0F")
unit_wipro_ec5_tower_s2.floors.create(name: "1F")
unit_wipro_ec5_tower_s2.floors.create(name: "2F")
unit_wipro_ec5_tower_s2.floors.create(name: "3F")
unit_wipro_ec5_tower_s2.floors.create(name: "4F")
unit_wipro_ec5_tower_s2.floors.create(name: "5F")
unit_wipro_ec5_tower_s2.floors.create(name: "6F")
unit_wipro_ec5_tower_s2.floors.create(name: "7F")
unit_wipro_ec5_tower_s2.floors.create(name: "8F")
unit_wipro_ec5_tower_s2.floors.create(name: "9F")
unit_wipro_ec5_tower_s2.floors.create(name: "10F")
unit_wipro_ec5_tower_s2.floors.create(name: "11F")
unit_wipro_ec5_tower_s2.floors.create(name: "12F")






# ipms1 detail for tower 11

s1 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 22610, building_type: "Commercial",component: "Comp A",ipms: "1")
s2 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 423, building_type: "Commercial",component: "Comp B",ipms: "1")
s3 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 21830, building_type: "Commercial",component: "Comp A",ipms: "1")
s4 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 1942, building_type: "Commercial",component: "Comp B",ipms: "1")
s5 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 21830, building_type: "Commercial",component: "Comp A",ipms: "1")
s6 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 1942, building_type: "Commercial",component: "Comp B",ipms: "1")
s7 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 22360, building_type: "Commercial",component: "Comp A",ipms: "1")
s8 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 1330, building_type: "Commercial",component: "Comp B",ipms: "1")


# ipms1 detail for tower 12

s1 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 22670, building_type: "Commercial",component: "Comp A",ipms: "1")
s2 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 461.8, building_type: "Commercial",component: "Comp B",ipms: "1")
s3 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 23250, building_type: "Commercial",component: "Comp A",ipms: "1")
s4 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 2118, building_type: "Commercial",component: "Comp B",ipms: "1")
s5 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 23250, building_type: "Commercial",component: "Comp A",ipms: "1")
s6 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 2118, building_type: "Commercial",component: "Comp B",ipms: "1")
s7 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 24590, building_type: "Commercial",component: "Comp A",ipms: "1")
s8 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 1107, building_type: "Commercial",component: "Comp B",ipms: "1")


# ipms2 detail for tower 11

s1 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 2547, building_type: "Commercial",component: "Comp A",ipms: "2")
s2 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 600.6, building_type: "Commercial",component: "Comp B",ipms: "2")
s3 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 2520, building_type: "Commercial",component: "Comp A",ipms: "2")
s4 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 600.6, building_type: "Commercial",component: "Comp B",ipms: "2")
s5 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 2520, building_type: "Commercial",component: "Comp A",ipms: "2")
s6 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 600.6, building_type: "Commercial",component: "Comp B",ipms: "2")
s7 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 2415, building_type: "Commercial",component: "Comp A",ipms: "2")
s8 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 600.6, building_type: "Commercial",component: "Comp B",ipms: "2")

s9 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 1846, building_type: "Commercial",component: "Comp C",ipms: "2")
s10 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 603.9, building_type: "Commercial",component: "Comp D",ipms: "2")
s11 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 2283, building_type: "Commercial",component: "Comp C",ipms: "2")
s12 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 603.9, building_type: "Commercial",component: "Comp D",ipms: "2")
s13 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 2226, building_type: "Commercial",component: "Comp C",ipms: "2")
s14 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 603.9, building_type: "Commercial",component: "Comp D",ipms: "2")
s15 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 2006, building_type: "Commercial",component: "Comp C",ipms: "2")
s16 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 603.9, building_type: "Commercial",component: "Comp D",ipms: "2")


s17 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 2340, building_type: "Commercial",component: "Comp E",ipms: "2")
s18 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 271.3, building_type: "Commercial",component: "Comp F",ipms: "2")
s19 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 2340, building_type: "Commercial",component: "Comp E",ipms: "2")
s20 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 271.3, building_type: "Commercial",component: "Comp F",ipms: "2")
s21 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 2340, building_type: "Commercial",component: "Comp E",ipms: "2")
s22 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 271.3, building_type: "Commercial",component: "Comp F",ipms: "2")
s23 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 2340, building_type: "Commercial",component: "Comp E",ipms: "2")
s24= Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 271.3, building_type: "Commercial",component: "Comp F",ipms: "2")


s25 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 12720, building_type: "Commercial",component: "Comp G",ipms: "2")
s26 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 479, building_type: "Commercial",component: "Comp H",ipms: "2")
s27 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 11570, building_type: "Commercial",component: "Comp G",ipms: "2")
s28 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 1678, building_type: "Commercial",component: "Comp H",ipms: "2")
s29 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 11570, building_type: "Commercial",component: "Comp G",ipms: "2")
s30 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 1942, building_type: "Commercial",component: "Comp H",ipms: "2")
s31 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 12330, building_type: "Commercial",component: "Comp G",ipms: "2")
s32 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 1679, building_type: "Commercial",component: "Comp H",ipms: "2")


# ipms2 detail for tower 12

s1 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 2488, building_type: "Commercial",component: "Comp A",ipms: "2")
s2 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 624.3, building_type: "Commercial",component: "Comp B",ipms: "2")
s3 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 2465, building_type: "Commercial",component: "Comp A",ipms: "2")
s4 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 624.3, building_type: "Commercial",component: "Comp B",ipms: "2")
s5 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 2389, building_type: "Commercial",component: "Comp A",ipms: "2")
s6 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 624.3, building_type: "Commercial",component: "Comp B",ipms: "2")
s7 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 2404, building_type: "Commercial",component: "Comp A",ipms: "2")
s8 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 624.3, building_type: "Commercial",component: "Comp B",ipms: "2")

s9 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 2914, building_type: "Commercial",component: "Comp C",ipms: "2")
s10 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 658.8, building_type: "Commercial",component: "Comp D",ipms: "2")
s11 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 2517, building_type: "Commercial",component: "Comp C",ipms: "2")
s12 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 658.8, building_type: "Commercial",component: "Comp D",ipms: "2")
s13 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 2125, building_type: "Commercial",component: "Comp C",ipms: "2")
s14 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 658.8, building_type: "Commercial",component: "Comp D",ipms: "2")
s15 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 2724, building_type: "Commercial",component: "Comp C",ipms: "2")
s16 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 658.8, building_type: "Commercial",component: "Comp D",ipms: "2")


s17 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 2689, building_type: "Commercial",component: "Comp E",ipms: "2")
s18 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 296, building_type: "Commercial",component: "Comp F",ipms: "2")
s19 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 2553, building_type: "Commercial",component: "Comp E",ipms: "2")
s20 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 296, building_type: "Commercial",component: "Comp F",ipms: "2")
s21 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 2553, building_type: "Commercial",component: "Comp E",ipms: "2")
s22 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 296, building_type: "Commercial",component: "Comp F",ipms: "2")
s23 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 2553, building_type: "Commercial",component: "Comp E",ipms: "2")
s24= Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 296, building_type: "Commercial",component: "Comp F",ipms: "2")


s25 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 12930, building_type: "Commercial",component: "Comp G",ipms: "2")
s26 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 522, building_type: "Commercial",component: "Comp H",ipms: "2")
s27 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 12610, building_type: "Commercial",component: "Comp G",ipms: "2")
s28 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 1885, building_type: "Commercial",component: "Comp H",ipms: "2")
s29 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 12910, building_type: "Commercial",component: "Comp G",ipms: "2")
s30 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 2186, building_type: "Commercial",component: "Comp H",ipms: "2")
s31 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 13190, building_type: "Commercial",component: "Comp G",ipms: "2")
s32 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 1414, building_type: "Commercial",component: "Comp H",ipms: "2")




# ipms3 detail for tower 11

s1 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 11900, building_type: "Commercial",component: "Comp A",ipms: "3")
s2 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "0F", area: 322.9, building_type: "Commercial",component: "Comp B",ipms: "3")
s3 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 11900, building_type: "Commercial",component: "Comp A",ipms: "3")
s4 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "1F", area: 1521, building_type: "Commercial",component: "Comp B",ipms: "3")
s5 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 12370, building_type: "Commercial",component: "Comp A",ipms: "3")
s6 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "2F", area: 1518, building_type: "Commercial",component: "Comp B",ipms: "3")
s7 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 13190, building_type: "Commercial",component: "Comp A",ipms: "3")
s8 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-11", floor: "3F", area: 1068, building_type: "Commercial",component: "Comp B",ipms: "3")


# ipms3 detail for tower 12

s1 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 12980, building_type: "Commercial",component: "Comp A",ipms: "3")
s2 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "0F", area: 353.1, building_type: "Commercial",component: "Comp B",ipms: "3")
s3 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 12980, building_type: "Commercial",component: "Comp A",ipms: "3")
s4 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "1F", area: 1660, building_type: "Commercial",component: "Comp B",ipms: "3")
s5 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 13470, building_type: "Commercial",component: "Comp A",ipms: "3")
s6 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "2F", area: 545.7, building_type: "Commercial",component: "Comp B",ipms: "3")
s7 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 13760, building_type: "Commercial",component: "Comp A",ipms: "3")
s8 = Survey.create(organisation: "Wipro", city: "Bangalore", location: "Wipro Electronic City", unit: "EC-4", tower: "TOWER-12", floor: "3F", area: 1189, building_type: "Commercial",component: "Comp B",ipms: "3")





