class TileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :number, :options, :removes, :active, :board_id
end
