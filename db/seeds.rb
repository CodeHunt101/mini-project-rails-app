# require 'rest-client'
# require 'json'
def get_pokemon(id)
  response = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{id}")
  JSON.parse(response)
end

def get_type(id)
  response = RestClient.get("https://pokeapi.co/api/v2/type/#{id}")
  JSON.parse(response)
end

#Generate pokemons
(1..151).to_a.each do |id|
  Pokemon.create(name: get_pokemon(id)["name"], image: get_pokemon(id)["sprites"]["front_default"])
end

#Generate types
(1..18).to_a.each do |id|
  Type.create(name: get_type(id)["name"])
end

#Randomnly assign types to pokemons (pokemon_types)
Pokemon.all.each do |pokemon|
  3.times do
    PokemonType.find_or_create_by(pokemon_id: pokemon.id, type_id: (1..18).to_a.sample)
  end
end