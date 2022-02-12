class Player < ApplicationRecord
    has_many :wins, :dependent => :destroy
    
    validates_presence_of :name
    # validates_uniqueness_of :name
end