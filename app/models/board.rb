class Board < ApplicationRecord
    has_many :tiles
    belongs_to :game

    # validates_presence_of :game_id
end
