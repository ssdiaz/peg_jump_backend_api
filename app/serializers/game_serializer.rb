class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :board_id, :player, :win, :tiles

end
