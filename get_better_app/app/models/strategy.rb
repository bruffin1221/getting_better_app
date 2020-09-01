class Strategy < ActiveRecord::Base
    belongs_to :plan
    belongs_to :goal
    belongs_to :objective
    has_many :tactics
    has_many :lists
end

