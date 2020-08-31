class Goal < ActiveRecord::Base
    belongs_to :plan
    has_many :objectives
    has_many :strategies
    has_many :tactics
    has_many :lists
end

#@list.each do |l|
 #   puts l.name
  #  puts l.objectives.routine
#end

#@list=List.where(plan_id: 7)

#goal_list=@list.each do |l|
 #   puts l.goal.name
#end
