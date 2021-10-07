SELECT pokemons.name, types.name
FROM pokemon_types 
INNER JOIN pokemons 
ON pokemons.id = pokemon_types.pokemon_id 
INNER JOIN types 
ON types.id = pokemon_types.type_id
WHERE pokemon_types.id = 1;