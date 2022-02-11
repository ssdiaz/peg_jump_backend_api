class GamesController < ApplicationController

    def index
        games = Game.all
        render json: GameSerializer.new(games) 
    end


    # def show
    #     game = Game.find_by(id: params[:id])
    #     # render json: {id: game.id, player: game.player, board_id: game.board_id} 
    #     render json: GameSerializer.new(game)
    # end

    # def create

        
    #     game = Game.new()         # game = Game.new(game_params)



    #     if game.save || game_params.blank?


    #         # #  create a new board
    #         #  board = Board.create(game_id: game.id) #have to put board before tile creation

    #         # # create the tiles
    #         # tiles =
    #         # [ 1, [4,6],       [2,3]       ],
    #         # [ 2, [7,9],       [4,5]       ],
    #         # [ 3, [8,10],      [5,6]       ],
    #         # [ 4, [1,6,13,11], [2,5,8,7]   ],
    #         # [ 5, [12,14],     [8,9]       ],
    #         # [ 6, [1,4,13,15], [3,5,9,10]  ],
    #         # [ 7, [2,9],       [4,8]       ],
    #         # [ 8, [3,10],      [5,9]       ],
    #         # [ 9, [2,7],       [5,8]       ],
    #         # [10, [3,8],       [6,9]       ],
    #         # [11, [4,13],      [7,12]      ],
    #         # [12, [5,14],      [8,13]      ],
    #         # [13, [11,4,6,15], [12,8,9,14] ],
    #         # [14, [12,5],      [13,9]      ],
    #         # [15, [13,6],      [14,10]     ]
                        
    #         # tiles.each do |tile|
    #         #     Tile.create(number: tile[0], options: tile[1], removes: tile[2], active: true, board_id: board.id)
    #         # end

    #         # game.board_id = board.id
    #         # game.save

    #         render json: GameSerializer.new(game)
    #     else
    #         render json: {errors: game.errors.full_messages}, status: :unprocessible_entity
    #     end


    # end

    # private

    # def game_params
    #     params.require(:game).permit(board_id: null, win: null, player_id: null, move_count: null)
    #     #params.require(:game).permit(:board_id, :win, :player_id, :move_count)
    #     #.with_defaults(board_id: null, win: null, player_id: null, move_count: null)
    #     #params.require(:game).permit(*args)
    #     #params.require(:game)
    # end

end