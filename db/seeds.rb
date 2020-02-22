# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
STYLES = ['American Amber Lager', 'Bohemian-Style Pilsner', 'English-Style Brown Ale', 'German-Style Hefeweizen', 'Belgian-Style Saison', 'American Brett', 'Belgian-Style Flanders', 'American Black Ale', 'English-Style Brown Porter', 'Irish-Style Dry Stout', 'German-Style Schwarzbier', 'Belgian-Style Tripel', 'English-Style Pale Ale', 'German-Style Bock', 'Baltic-Style Porter', 'Imperial India Pale Ale)', 'Belgian-Style Dubbel']

Style.destroy_all
Ingredient.destroy_all
Pairing.destroy_all
# puts "seeding styles"

STYLES.each do |style|
     Style.create!(name: style)
end

# puts "done!"


def make_seed(ingredients, style1, style2)
  puts "Finding style 1"
  style1 = Style.find_by_name(style1)
  p style1
  puts "finding style 2"
  style2 = Style.find_by_name(style2)
  p style2
  ingredients.each do |ingredient|
    puts "creating ingredient"
    ingredient1 = Ingredient.new(name: ingredient)
    ingredient1 = Ingredient.find_by_name(ingredient.name) unless ingredient1.valid?
    puts "creating pairing 1"
    Pairing.create!(style: style1, ingredient: ingredient1)
    puts "creating pairing 2"
    Pairing.create!(style: style2, ingredient: ingredient1)
  end
end

grains = ["Farro", "Arborio", "Wild Rice", "Polenta"]
beans = ['Lentils', 'Fava', 'Chickpea', 'Green Beans']
shellfish = %w(Clams Scallops Lobster Crab)
rmav = %w(Parsnips Carrots Beef Strip Loin,Lamb)
game = %w(Duck Quail Quinoa Farro)
fats = ['Butter', 'Olive Oil', 'Duck fat', 'Pork fat']
vege = ['Carrots', 'Mild Peppers', 'Onions', 'Mushrooms']
cheese = ['Brie', 'Gouda']

make_seed(grains, "American Amber Lager", 'Bohemian-Style Pilsner')
make_seed(beans, 'English-Style Brown Ale', 'German-Style Hefeweizen')
make_seed(shellfish, 'Belgian-Style Saison', 'German-Style Hefeweizen')
make_seed(rmav, 'American Brett', 'Belgian-Style Flanders')
make_seed(game, 'American Pale Ale', 'American Brown Ale')
make_seed(fats, 'American Black Ale', 'English-Style Brown Porter')
make_seed(vege, 'Irish-Style Dry Stout', 'German-Style Schwarzbier')
make_seed(cheese, 'Belgian-Style Tripel', 'English-Style Pale Ale')


#

#
# CHEESE
#
# Aged Cheddar (Hoppy & Bitter), Blue (Dark & Roasty),
# Mozzarella (Clean & Crisp)
# BRAISED MEATS & CHOCOLATE
# Beef Short-Rib, Pork Shoulder, <50% Cacao
# (Malty & Sweet), >55% Cacao (Dark & Roasty)
# PORK
# Sausage, Tenderloin, Terrine
# CREAMY DESSERTS
# Cheesecake, Ice Cream, Creme Brûlée, Mousse Cake
