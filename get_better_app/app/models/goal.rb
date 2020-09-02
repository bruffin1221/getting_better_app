class Goal < ActiveRecord::Base
  has_one :objective_1
  has_one :objective_2
  has_one :objective_3
  has_one :objective_4
  has_many :strategies
  has_many :tactics
end


