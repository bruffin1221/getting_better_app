class Objective < ActiveRecord::Base
    belongs_to :goal
    has_many :strategies
    has_many :tactics, through: :strategies
end
