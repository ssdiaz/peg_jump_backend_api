class TilesController < ApplicationController

  # with namespaced routes, api/v1/<controller name> --> wil make an API controller and V! controller
  #Api::V1::TilesController < ApplicationController

    # --- renders all data, including sesitive/unncessary data ---
  # def index
  #   @birds = Bird.all
  #   render json: @birds
  # end

  #  --- Dont need instance variables to render directly to JSON; renders all data ---
  # def index
  #   birds = Bird.all
  #   render json: birds
  # end

   # --- only renders id, name, species) ---


    def index
      tiles = Tile.all
      # render json: tiles, only: [:id, :options, :removes, :peg]
      render json: TileSerializer.new(tiles) #using FastJson
    end
    
    def show
      tile = Tile.find_by(id: params[:id])
      # render json: {id: tile.id, player: tile.player, board_id: tile.board_id} 
      render json: TileSerializer.new(tile)
    end

    def create
      tile = Tile.create(tile_params)

        # #create the tiles
        # tiles =
        # [ 1, [4,6],       [2,3]       ],
        # [ 2, [7,9],       [4,5]       ],
        # [ 3, [8,10],      [5,6]       ],
        # [ 4, [1,6,13,11], [2,5,8,7]   ],
        # [ 5, [12,14],     [8,9]       ],
        # [ 6, [1,4,13,15], [3,5,9,10]  ],
        # [ 7, [2,9],       [4,8]       ],
        # [ 8, [3,10],      [5,9]       ],
        # [ 9, [2,7],       [5,8]       ],
        # [10, [3,8],       [6,9]       ],
        # [11, [4,13],      [7,12]      ],
        # [12, [5,14],      [8,13]      ],
        # [13, [11,4,6,15], [12,8,9,14] ],
        # [14, [12,5],      [13,9]      ],
        # [15, [13,6],      [14,10]     ]
        
        # tiles.each do |tile|
        #   Tile.create(number: tile[0], options: tile[1], removes: tile[2], active: true, board_id: board.id)

          if tile.save
              render json: TileSerializer.new(tile)
          else
              render json: {errors: tile.errors.full_messages}, status: :unprocessible_entity
          end

        # end
    end

    private

    def tile_params
      params.require(:tile).permit(:options, :removes, :active, :board_id, :number)
    end

end



  # ----------------------------------------------------------------------------------------

  #  --- above EXCEPT we're using except: option ---
  # def index
  #   birds = Bird.all
  #   render json: birds, except: [:created_at, :updated_at]
  # end


  # --- renders all data, including sesitive/unncessary data ---
  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: bird
  # end

  # --- only renders id, name, species) ---
  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: {id: bird.id, name: bird.name, species: bird.species } 
  # end

  # --- above BUT using Ruby's slice method: (only works for a single hash)--- 
  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: bird.slice(:id, :name, :species)
  # end

  # --- show but with custom error message -- 
  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   if bird
  #     render json: { id: bird.id, name: bird.name, species: bird.species }
  #   else
  #     render json: { message: 'Bird not found' }
  #   end
  # end


