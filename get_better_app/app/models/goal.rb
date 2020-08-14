class Goal < ActiveRecord::Base
    has_many :objectives
    has_many :strategy_tactics
    has_many :strategies, through :objectives
    has_many :tactics, through :strategy_tactics
end
