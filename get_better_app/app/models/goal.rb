class Goal < ActiveRecord::Base
    has_many :objectives
    has_many :strategies, through: :objectives
    has_many :tactics, through: :objectives

end

#params={"tactic"=>{"action"=>"Writing content for the website", "deadline"=>"June 1st"}, 
#"goal"=>{"goal_ids"=>["Become Digital Nomad"]}, 
#"objective"=>{"objective_ids"=>["Business"]}, 
#"strategy"=>{"strategy_ids"=>["Create and Optimize a health and wellness website"]}} #<Tactic:0x00007ffff7503dc8
  [id: 36,
  actions: "Finish rails lab",
  deadline: Fri, 28 Aug 2020,
  goal_id: 4,
  objective_id: 25,
  strategy_id: 13>]
  Plan.create(goal_id: 4, objective_id: 25, strategy_id: 13, tactic_id: 36)
  id: 35,
  actions: "Watch video",
  deadline: Fri, 21 Aug 2020,
  goal_id: 4,
  objective_id: 24,
  strategy_id: 12>

  id: 34,
  created_at: 2020-08-25 04:07:35 UTC,
  updated_at: 2020-08-25 04:07:35 UTC,
  actions: "Build New Website using Ruby on Rails that includes a blogging platform",
  deadline: nil,
  goal_id: 5,
  objective_id: 22,
  strategy_id: 10>

  Plan.create(goal_id: 5, objective_id: 22, strategy_id: 10, tactic_id: 34)
  Plan.create(goal_id: 4, objective_id: 24, strategy_id: 12, tactic_id: 35)

  @plan.each do |p|
    puts p.goal.name
    puts p.objective.name
    puts p.strategy.routine
    puts p.tactic.actions
  end
  end