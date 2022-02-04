class TileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :number, :options, :removes, :peg, :board_id
  # belongs_to :board
end
