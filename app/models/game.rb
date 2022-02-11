class Game < ApplicationRecord
    # belongs_to :player
    has_one :board
    has_many :tiles, through: :board

end

#    class Board < ApplicationRecord
#     has_many :tiles
#     belongs_to :game

#     # validates_presence_of :game_id




    # def createTiles
    #     tiles =
    #     [ 1, [4,6],       [2,3],       true],
    #     [ 2, [7,9],       [4,5],       true],
    #     [ 3, [8,10],      [5,6],       true],
    #     [ 4, [1,6,13,11], [2,5,8,7],   true],
    #     [ 5, [12,14],     [8,9],       true],
    #     [ 6, [1,4,13,15], [3,5,9,10],  true],
    #     [ 7, [2,9],       [4,8],       true],
    #     [ 8, [3,10],      [5,9],       true],
    #     [ 9, [2,7],       [5,8],       true],
    #     [10, [3,8],       [6,9],       true],
    #     [11, [4,13],      [7,12],      true],
    #     [12, [5,14],      [8,13],      true],
    #     [13, [11,4,6,15], [12,8,9,14], true],
    #     [14, [12,5],      [13,9],      true],
    #     [15, [13,6],      [14,10],     true]
        
        
    #     tiles.each do |tile|
    #         Tile.create(number: tile[0], options: tile[1], removes: tile[2], active: true, game_id: game.id)
    #     end
    # end




# end









