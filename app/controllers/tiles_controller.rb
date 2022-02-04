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
    render json: tiles, only: [:id, :options, :removes, :peg]
    # render json: TileSerializer.new(tiles).to_serialized_json
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


end