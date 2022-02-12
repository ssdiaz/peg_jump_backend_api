class Game < ApplicationRecord
    has_one :board
    has_many :tiles, through: :board
end
