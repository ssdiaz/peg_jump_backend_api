class TileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :options, :removes, :peg
end
