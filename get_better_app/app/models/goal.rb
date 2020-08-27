class Goal < ActiveRecord::Base
    belongs_to :plan
    has_many :objectives
    has_many :strategies
    has_many :tactics

end

