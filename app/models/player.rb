class Player < ApplicationRecord
    # has_many :games
    validates_presence_of :name
    validates_uniqueness_of :name
end


# is a board just an aray that the Game model tracks? I think so. 

#  shovel into the board array on each move?

# NO, move needs to be separate --- move is an action, no table in DB to track.... 
    # unless you wanna add in the undo function; and use .last... could do that. idk. feature. 



# rails g model Game player_id:integer  --no-test-framework  