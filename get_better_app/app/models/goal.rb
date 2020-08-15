class Goal < ActiveRecord::Base
    has_many :objectives
    has_many :strategies
    has_many :tactics, through: :strategies

end
