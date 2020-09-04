class Tactic < ActiveRecord::Base
    belongs_to :goal
    belongs_to :objective1
    belongs_to :objective2
    belongs_to :objective3
    belongs_to :objective4
    belongs_to :strategy
end
