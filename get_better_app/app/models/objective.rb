class Objective < ActiveRecord::Base
    belongs_to :goals
    has_many :tactics
end
