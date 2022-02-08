class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :board_id, :player

  # attributes :game_id, :tiles
end
