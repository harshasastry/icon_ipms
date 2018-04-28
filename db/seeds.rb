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







