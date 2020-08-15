class Tactic < ActiveRecord::Base
    belongs_to :goal
    belongs_to :objective
    belongs_to :strategies
end
