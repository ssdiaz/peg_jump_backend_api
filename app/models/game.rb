class Game < ApplicationRecord
    belongs_to :player
    has_one :board
    has_many :tiles, through: :board

   # has_many :services, through: :stylist_services, :dependent => :destroy
end
