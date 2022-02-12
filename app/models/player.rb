class Player < ApplicationRecord
    has_many :wins
    
    validates_presence_of :name
    # validates_uniqueness_of :name
end