# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

games_data = [ 
  {:name=>"Rune Factory 4 Special", :genre=>"Role-playing (RPG)", :price=>5999, :release_date=>"2019-Jul-25"},
  {:name=>"Borderlands 3", :genre=>"Simulator", :price=>5999, :release_date=>"2019-Sep-13"},
  {:name=>"Zombie Driver: Immortal Edition", :genre=>"Racing", :price=>5999, :release_date=>"2019-Jul-25"},
  {:name=>"Remnant: From the Ashes", :genre=>"Shooter", :price=>6999, :release_date=>"2019-Aug-20"},
  {:name=>"Monster Hunter: World - Iceborne", :genre=>"Adventure", :price=>6999, :release_date=>"2019-Sep-06"},
  {:name=>"Cyberpunk 2077", :genre=>"Role-playing (RPG)", :price=>4999, :release_date=>"2020-Sep-17"},
  {:name=>"Pokémon Shield", :genre=>"Role-playing (RPG)", :price=>5999, :release_date=>"2019-Nov-15"},
  {:name=>"Children of Morta", :genre=>"Role-playing (RPG)", :price=>6999, :release_date=>"2019-Sep-03"} ]

games_data.each do |game| 
  game = Game.create!(game)
  unless game.save 
    p game
  end
end



