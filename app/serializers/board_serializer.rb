class BoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :game_id, :tiles
end
