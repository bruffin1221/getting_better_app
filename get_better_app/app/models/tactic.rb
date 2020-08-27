class Tactic < ActiveRecord::Base
    belongs_to :plan
    belongs_to :goal
    belongs_to :objective
    belongs_to :strategy
end
