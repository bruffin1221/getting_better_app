class Objective_3 < ActiveRecord::Base
    belongs_to :goal
    has_many :strategies
    has_many :tactics
end
