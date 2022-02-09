# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tile.destroy_all
Tile.reset_pk_sequence

Board.destroy_all
Board.reset_counters(1, :tiles)


Player.destroy_all

Game.destroy_all
Game.reset_pk_sequence


Player.create(name:"Sam")
sam = Player.all.first

Game.create(player_id: sam.id)
game = Game.all.first

Board.create(game_id: game.id) #have to put board before tile creation
board =  Board.all.first

game.board_id = board.id
game.save

tiles =
[ 1, [4,6],       [2,3],       true],
[ 2, [7,9],       [4,5],       true],
[ 3, [8,10],      [5,6],       true],
[ 4, [1,6,13,11], [2,5,8,7],   true],
[ 5, [12,14],     [8,9],       true],
[ 6, [1,4,13,15], [3,5,9,10],  true],
[ 7, [2,9],       [4,8],       true],
[ 8, [3,10],      [5,9],       true],
[ 9, [2,7],       [5,8],       true],
[10, [3,8],       [6,9],       true],
[11, [4,13],      [7,12],      true],
[12, [5,14],      [8,13],      true],
[13, [11,4,6,15], [12,8,9,14], true],
[14, [12,5],      [13,9],      true],
[15, [13,6],      [14,10],     true]


tiles.each do |tile|
    Tile.create(number: tile[0], options: tile[1], removes: tile[2], active: true, board_id: board.id, :win: nil)
end
