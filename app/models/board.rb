class Board < ApplicationRecord
    has_many :tiles
    belongs_to :game
end
