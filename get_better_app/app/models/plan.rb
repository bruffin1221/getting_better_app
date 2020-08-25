class Plan < ActiveRecord::Base
    belongs_to :goal
    belongs_to :objective
    belongs_to :strategy
    belongs_to :tactic 
end
