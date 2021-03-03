# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p Car.create([
    {year: "1992", make: "Nissan", model: "240SX"},
    {year: "1997", make: "Nissan", model: "240SX"},
    {year: "1987", make: "Toyota", model: "Corolla Sport GT-S"},
    {year: "1999", make: "Mazda", model: "MX5 Miata"}
])

Engine.create([
    { engine_code: "Redtop SR20DET", horsepower: "205HP" },
    { engine_code: "Notchtop SR20DET", horsepower: "247HP" },
    { engine_code: "Silver Top 4AGE", horsepower: "155HP" },
    { engine_code: "BP 1.8L", horsepower: "140HP" }
])

Clutch.create([
    {stage: "Stage 1", brand: "SPEC Clutches"},
    {stage: "Stage 2", brand: "Exedy Racing Clutch"},
    {stage: "Stage 3", brand: "SPEC Clutches"},
    {stage: "Stage 4", brand: "FXRacing Clutch Kits"}
])

p Differential.create([
    {name: "limited slip", brand: "Nismo"},
    {name: "Mechanical LSD", brand: "KAAS"}
])

HandBrake.create([
    {name: "Cable"},
    {name: "Hydraulic"}
])

Rollcage.create([
    {name: "8 Point", brand: "S&W"},
    {name: "10 Point", brand: "S&W"}
])

Suspension.create([
    {name: "Coil-Over System", brand: "Ridetech"},
    {name: "Coil-Over Dualtech Adjustable", brand: "HSD"}
])
