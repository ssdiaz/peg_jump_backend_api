class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :board_id, :move_count, :win, :tiles

end
