class List < ActiveRecord::Base
    belongs_to :plan
    belongs_to :goal
    belongs_to :objective
    belongs_to :strategy
    belongs_to :tactics
end

#List.select(:objective_id).strategy
#List.where(plan_id: Plan.pluck
#List.where(:id)).where(goal_id)
#List.where(strategy_id: Strategy.pluck(:id)) 
#Strategy.pluck(:routine, :goal_id)
#List.where(plan_id: Plan.pluck(:id), goal_id: Goal.pluck(:id)).map do |i|
 #   puts i.plan.name
  #  puts i.goal.name
    
#Strategy.where(routine, objective_id: Objective.pluck(:id)).each do |o|
 #   puts o.objective.name
#end

#Tactic.select(:plan_id, goal_id: :.pluck.each do |i|
 #   puts i.plan.name
  #  puts i.goal.name
#end
#objective_id: Objective.pluck(:id)
#routine: Strategy.pluck(:routine)

#strategy=Strategy.pluck(:objective_id)

#User.joins(posts: :images).where(images: { caption: 'First post' })
#Objective.joins(:plan).select(:name)
#List.joins(:goal).select(name)



#Strategy.joins(:objective).select(name)
#Plan.joins(:strategies, :lists).select(:name)