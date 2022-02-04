class TileSerializer

    include FastJsonApi::ObjectSerializer
    attributes :tile #:id, :options, :removes, :peg

    # def initialize(tile_object)
    #     @tile = tile_object
    # end
    

    # def to_serialized_json
    #     @tile.to_json(
    #         # :include => {
    #             :tile => {:only => [:id, :options, :removes, :peg]}
    #         # }
    #     )
    # end
end

