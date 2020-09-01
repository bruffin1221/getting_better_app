class Goal < ActiveRecord::Base
  has_many :goal_1s
  has_many :goal_2s
  has_many :goal_3s
  has_many :goal_4s
  has_many :strategies
  has_many :tactics
end