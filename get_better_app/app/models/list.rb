class List < ActiveRecord::Base
    belongs_to :plan
    belongs_to :goal
    belongs_to :objective
    belongs_to :strategy
    belongs_to :tactics
end

List.select(:objective_id).strategy