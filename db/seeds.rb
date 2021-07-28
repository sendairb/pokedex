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
  {"regional_pokedex_id": 1, "regional_pokedex_no": 1, "national_pokedex_no": 810, "name": "サルノリ", "type": ["くさ"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 2, "national_pokedex_no": 811, "name": "バチンキー", "type": ["くさ"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 3, "national_pokedex_no": 812, "name": "ゴリランダー", "type": ["くさ"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 4, "national_pokedex_no": 813, "name": "ヒバニー", "type": ["ほのお"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 5, "national_pokedex_no": 814, "name": "ラビフット", "type": ["ほのお"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 6, "national_pokedex_no": 815, "name": "エースバーン", "type": ["ほのお"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 7, "national_pokedex_no": 816, "name": "メッソン", "type": ["みず"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 8, "national_pokedex_no": 817, "name": "ジメレオン", "type": ["みず"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 9, "national_pokedex_no": 818, "name": "インテレオン", "type": ["みず"], "appear_on_sword": false, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 10, "national_pokedex_no": 824, "name": "サッチムシ", "type": ["むし"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 11, "national_pokedex_no": 825, "name": "レドームシ", "type": ["むし", "エスパー"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 12, "national_pokedex_no": 826, "name": "イオルブ", "type": ["むし", "エスパー"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 13, "national_pokedex_no": 10, "name": "キャタピー", "type": ["むし"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 14, "national_pokedex_no": 11, "name": "トランセル", "type": ["むし"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 15, "national_pokedex_no": 12, "name": "バタフリー", "type": ["むし", "ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 16, "national_pokedex_no": 736, "name": "アゴジムシ", "type": ["むし", "でんき"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 17, "national_pokedex_no": 737, "name": "デンヂムシ", "type": ["むし", "でんき"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 18, "national_pokedex_no": 738, "name": "クワガノン", "type": ["むし", "でんき"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 19, "national_pokedex_no": 163, "name": "ホーホー", "type": ["ノーマル", "ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 20, "national_pokedex_no": 164, "name": "ヨルノズク", "type": ["ノーマル", "ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 21, "national_pokedex_no": 821, "name": "ココガラ", "type": ["ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 22, "national_pokedex_no": 822, "name": "アオガラス", "type": ["ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 23, "national_pokedex_no": 823, "name": "アーマーガア", "type": ["ひこう", "はがね"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 24, "national_pokedex_no": 819, "name": "ホシガリス", "type": ["ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 25, "national_pokedex_no": 820, "name": "ヨクバリス", "type": ["ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 26, "national_pokedex_no": 519, "name": "マメパト", "type": ["ノーマル", "ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 27, "national_pokedex_no": 520, "name": "ハトーボー", "type": ["ノーマル", "ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 28, "national_pokedex_no": 521, "name": "ケンホロウ", "type": ["ノーマル", "ひこう"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 29, "national_pokedex_no": 827, "name": "クスネ", "type": ["あく"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 30, "national_pokedex_no": 828, "name": "フォクスライ", "type": ["あく"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 31, "national_pokedex_no": 263, "name": "ジグザグマ", "type": ["あく", "ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 32, "national_pokedex_no": 264, "name": "マッスグマ", "type": ["あく", "ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 33, "national_pokedex_no": 862, "name": "タチフサグマ", "type": ["あく", "ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 34, "national_pokedex_no": 831, "name": "ウールー", "type": ["ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 35, "national_pokedex_no": 832, "name": "バイウールー", "type": ["ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 36, "national_pokedex_no": 270, "name": "ハスボー", "type": ["みず", "くさ"], "appear_on_sword": false, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 37, "national_pokedex_no": 271, "name": "ハスブレロ", "type": ["みず", "くさ"], "appear_on_sword": false, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 38, "national_pokedex_no": 272, "name": "ルンパッパ", "type": ["みず", "くさ"], "appear_on_sword": false, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 39, "national_pokedex_no": 273, "name": "タネボー", "type": ["くさ"], "appear_on_sword": true, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 40, "national_pokedex_no": 274, "name": "コノハナ", "type": ["くさ", "あく"], "appear_on_sword": true, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 41, "national_pokedex_no": 275, "name": "ダーテング", "type": ["くさ", "あく"], "appear_on_sword": true, "appear_on_shield": false},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 42, "national_pokedex_no": 833, "name": "カムカメ", "type": ["みず"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 43, "national_pokedex_no": 834, "name": "カジリガメ", "type": ["みず", "いわ"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 44, "national_pokedex_no": 509, "name": "チョロネコ", "type": ["あく"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 45, "national_pokedex_no": 510, "name": "レパルダス", "type": ["あく"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 46, "national_pokedex_no": 835, "name": "ワンパチ", "type": ["でんき"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 47, "national_pokedex_no": 836, "name": "パルスワン", "type": ["でんき"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 48, "national_pokedex_no": 659, "name": "ホルビー", "type": ["ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 49, "national_pokedex_no": 660, "name": "ホルード", "type": ["ノーマル", "じめん"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 50, "national_pokedex_no": 572, "name": "チラーミィ", "type": ["ノーマル"], "appear_on_sword": true, "appear_on_shield": true},
  {"regional_pokedex_id": 1, "regional_pokedex_no": 51, "national_pokedex_no": 573, "name": "チラチーノ", "type": ["ノーマル"], "appear_on_sword": true, "appear_on_shield": true}
]

RegionalPokedex.create(
  id: 1,
  name: 'galar',
  display_name: 'ガラル'
)

pokemons.each do |pokemon|
  type1, type2 = pokemon[:type]
  Pokemon.create(
    regional_pokedex_id: pokemon[:regional_pokedex_id],
    name: pokemon[:name],
    type1: type1,
    type2: type2,
    national_pokedex_no: pokemon[:national_pokedex_no],
    regional_pokedex_no: pokemon[:regional_pokedex_no],
    appear_on_sword: pokemon[:appear_on_sword],
    appear_on_shield: pokemon[:appear_on_shield]
  )
end

