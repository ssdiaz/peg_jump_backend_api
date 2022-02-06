class Game < ApplicationRecord
    belongs_to :player
    # has_many :tiles through: :board
end
