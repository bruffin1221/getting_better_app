class Objective_4 < ActiveRecord::Base
    belongs_to :goal
    has_many :strategies
    has_many :tactics
end
