class Goal < ActiveRecord::Base
  has_one :objective1
  has_one :objective2
  has_one :objective3
  has_one :objective4
  has_many :strategies
  has_many :tactics
end


