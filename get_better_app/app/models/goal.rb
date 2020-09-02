class Goal < ActiveRecord::Base
  has_one :on_1s
  has_one :goal_2s
  has_one :goal_3s
  has_one :goal_4s
  has_many :strategies
  has_many :tactics
end
