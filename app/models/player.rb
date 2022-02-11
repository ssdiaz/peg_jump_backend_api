class Player < ApplicationRecord
    validates_presence_of :name

    has_many :wins
    
    # validates_uniqueness_of :name
end