class Goal < ActiveRecord::Base
    has_many :objectives
    has_many :strategies, through: :objectives
    has_many :tactics, through: :objectives

end

#params={"tactic"=>{"action"=>"Writing content for the website", "deadline"=>"June 1st"}, 
#"goal"=>{"goal_ids"=>["Become Digital Nomad"]}, 
#"objective"=>{"objective_ids"=>["Business"]}, 
#"strategy"=>{"strategy_ids"=>["Create and Optimize a health and wellness website"]}}