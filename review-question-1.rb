## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
# puts pokemon[0][:abilities][0][:ability][:url]

# How would you return the first pokemon with base experience over 40?
out = pokemon.find do |pokemon_object|
    pokemon_object[:base_experience] > 40
end

# puts out

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
out2 = pokemon.filter do |pokemon_object|
    pokemon_object[:base_experience] > 40
end

# puts out2

# How would you return an array of all of the pokemon's names?
out3 = pokemon.map {|pokemon_object| pokemon_object[:name]}

# puts out3

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
out4 = pokemon.any? {|pokemon_object| pokemon_object[:weight] > 60}

puts out4