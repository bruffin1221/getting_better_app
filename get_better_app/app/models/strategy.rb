class Strategy < ActiveRecord::Base
    belongs_to :goal
    belongs_to :objective_1
    belongs_to :objective_2
    belongs_to :objective_3
    belongs_to :objective_4
    has_many :tactics
end
