# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.delete_all
RegionalPokedex.delete_all

pokemons = [
  {
    "national_pokedex_no": 810,
     "regional_pokedex_no": 1,
     "name": "サルノリ",
     "type": ["くさ"],
     "appear_on_sword": true,
     "appear_on_shield": true
  },
  {
    "national_pokedex_no": 811,
    "regional_pokedex_no": 2,
    "name": "バチンキー",
     "type": ["くさ"],
     "appear_on_sword": true,
     "appear_on_shield": true
  },
  {
    "national_pokedex_no": 812,
    "regional_pokedex_no": 3,
    "name": "ゴリランダー",
    "type": ["くさ"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 813,
    "regional_pokedex_no": 4,
    "name": "ヒバニー",
    "type": ["ほのお"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 814,
    "regional_pokedex_no": 5,
    "name": "ラビフット",
    "type": ["ほのお"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 815,
    "regional_pokedex_no": 6,
    "name": "エースバーン",
    "type": ["ほのお"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 816,
    "regional_pokedex_no": 7,
    "name": "メッソン",
    "type": ["みず"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 817,
    "regional_pokedex_no": 8,
    "name": "ジメレオン",
    "type": ["みず"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 818,
    "regional_pokedex_no": 9,
    "name": "インテレオン",
    "type": ["みず"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 10,
    "name": "サッチムシ",
    "type": ["むし"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 11,
    "name": "レドームシ",
    "type": ["むし", "エスパー"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 12,
    "name": "イオルブ",
    "type": ["むし", "エスパー"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 13,
    "name": "キャタピー",
    "type": ["むし"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 14,
    "name": "トランセル",
    "type": ["むし"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 15,
    "name": "バタフリー",
    "type": ["むし", "ひこう"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 16,
    "name": "アゴジムシ",
    "type": ["むし"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 17,
    "name": "デンヂムシ",
    "type": ["むし", "でんき"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 18,
    "name": "クワガノン",
    "type": ["むし", "でんき"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 19,
    "name": "ホーホー",
    "type": ["ノーマル", "ひこう"],
    "appear_on_sword": true,
    "appear_on_shield": true
  },
  {
    "national_pokedex_no": 810,
    "regional_pokedex_no": 20,
    "name": "ヨルノズク",
    "type": ["ノーマル", "ひこう"],
    "appear_on_sword": true,
    "appear_on_shield": true
  }
]

pokemons.each do |pokemon|
  type1, type2 = pokemon[:type]
  Pokemon.create(
    name: pokemon[:name],
    type1: type1,
    type2: type2,
    national_pokedex_no: pokemon[:national_pokedex_no],
    regional_pokedex_no: pokemon[:regional_pokedex_no],
    appear_on_sword: pokemon[:appear_on_sword],
    appear_on_shield: pokemon[:appear_on_shield]
  )
end

RegionalPokedex.create(
  name: 'galar',
  display_name: 'ガラル'
)
