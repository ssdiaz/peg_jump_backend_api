# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tile.destroy_all

# tiles =
# [ 1, [4,6],      [2,3],        true],
# [ 2, [7,8],       [4,5],       true],
# [ 3, [8,10],      [5,6],       true],
# [ 4, [1,6,13,11], [2,5,8,7],   true],
# [ 5, [12,14],     [8,9],       true],
# [ 6, [1,4,15],    [3,5,10],    true],
# [ 7, [2,9],       [4,8],       true],
# [ 8, [3,10],      [5,9],       true],
# [ 9, [2,7],       [5,8],       true],
# [10, [3,15,8],    [6,9],       true],
# [11, [4,13],      [7,12],      true],
# [12, [5,14],      [8,13],      true],
# [13, [11,4,6,15], [12,8,9,14], true],
# [14, [12,5],      [13,9],      true],
# [15, [13,6],      [14,10],     true],
# [ 2, [7,8],       [4,5],       true],
# [ 3, [8,10],      [5,6],       true],
# [ 4, [1,6,13,11], [2,5,8,7],   true],
# [ 5, [12,14],     [8,9],       true],
# [ 6, [1,4,15],    [3,5,10],    true],
# [ 7, [2,9],       [4,8],       true],
# [ 8, [3,10],      [5,9],       true],
# [ 9, [2,7],       [5,8],       true],
# [10, [3,15,8],    [6,9],       true],
# [11, [4,13],      [7,12],      true],
# [12, [5,14],      [8,13],      true],
# [13, [11,4,6,15], [12,8,9,14], true],
# [14, [12,5],      [13,9],      true],
# [15, [13,6],      [14,10],     true]

# tiles.each do |tile|
#     Tile.create(options: tile[1], removes: tile[2], peg: true)
# end