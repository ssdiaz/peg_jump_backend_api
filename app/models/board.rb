class Board < ApplicationRecord
    has_many :tiles

    # validates_presence_of :game_id
end
