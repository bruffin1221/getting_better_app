class Goal < ActiveRecord::Base
    has_many :objectives
    has_many :strategies, through: :objectives
    has_many :tactics, through: :objectives

end

#params={"objective"=>{"name"=>"Business", "description"=>"Build a web development and health platform that makes $1000 a month", "deadline"=>"June 1st, 2020"}, 
#"goal"=>{"goal_ids"=>["Become Digital Nomad"]}}