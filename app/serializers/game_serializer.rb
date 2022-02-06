class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :board_id

  # attributes :game_id, :tiles
end
