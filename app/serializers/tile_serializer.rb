class TileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :number, :options, :removes, :active, :board_id
  # belongs_to :board
end
