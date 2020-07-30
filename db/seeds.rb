# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BobaTea.destroy_all
BobaShop.destroy_all

BobaTea.create!(
    [
    {name: "Jasmine Milk Green Tea", description: "Cold or Hot, Ice level & Sugar level Optional"},
    {name: "Brown Sugar Milk Black Tea", description: "Cold only"},
    {name: "Blue Galaxy", description: "Cold or Hot, Ice level & Sugar level Optional"},
    {name: "Orange Fruit Tea", description: "Cold only"},
    {name: "Pinapple Green Tea", description: "Cold only, Nata Jelly"},
    {name: "Watermelon Green Tea", description: "Cold only, Crystal Pearl & Cheese Foam"},
    {name: "Straberry Green Tea", description: "Cold only, Crystal Pearl & Cheese Foam"},
    {name: "Dragon Fruit Tea", description: "Cold only, Crystal Pearl & Cheese Foam"},
    {name: "Peach Green Tea", description: "Cold only, Crystal Pearl& Sugar level Optional"},
    {name: "Green Bubble Milk Tea", description: "Cold or Hot, Crystal Pearl& Sugar level Optional"},
    {name: "Matcha Bubble Tea", description: "Cold only, Amber Bubble & Sugar level Optional"}
    ]
)

p "Created #{BobaTea.count} bobateas"

#Boba_tea.connection
#@boba_tea = BobaTea.first
#@boba_tea =BobaTea.find(id)#1-9
#@boba_tea.user.id = id#1
#boba_tea.save
BobaShop.create!(
    [
        {name:"Kung Fu Tea"},
        {name:"Gong Cha"},
        {name:"TIGER SUGAR"},
        {name:"TSAoCAA"},
        {name:"The Alley"}
    ]
)

p "Created #{BobaShop.count} shops"