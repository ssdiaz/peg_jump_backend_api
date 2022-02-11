class WinSerializer
  include FastJsonapi::ObjectSerializer
  attributes :move_count, :win_count, :player_id
end
