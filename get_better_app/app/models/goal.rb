class Goal < ActiveRecord::Base
    has_many :objectives
    has_many :strategies, through: :objectives
    has_many :tactics, through: :objectives

end

#Goal.create(name: "Finish Course", description:"Complete Flatirons Course", deadline:11/1/2020)
#Objective.create(name: "Finish Sinatra Project", description: "Finish Flatiron Course", deadline:8/24/2021 , goal_id: 1)
#Strategy.create(routine: "Planning Project", deadline: 8/17, goal_id: 1, objective_id: 1)
#Tactic.create(actions: "Researching the Project through Google", deadline: 8/17, goal_id: 1, objective_id:1, strategy_id: 1)
#Tactic.create(actions: "Watching the video", deadline: 8/17, goal_id: 1, objective_id:1, strategy_id: 1)
#Tactic.create(actions: "Developing App Structure", deadline: 8/17, goal_id: 1, objective_id: 1, strategy_id: 1)
#Strategy.create(routine: "Building the Project", deadline: 8/24, goal_id: 1, objective_id: 1)
#Tactic.create(actions: "Stubbing out the classes", deadline: 8/18, goal_id: 1, objective_id: 1, strategy_id: 2)
#Tactic.create(actions: "Building the controllers and views", deadline: 8/20, goal_id: 1, objective_id: 1, strategy_id: 2)
#Tactic.create(actions: "Adding Anthentication", deadline: 8/21, goal_id: 1, objective_id: 1, strategy_id: 2)

