class Plan < ActiveRecord::Base
    has_many :goals
    has_many :objectives
    has_many :strategies
    has_many :strategies
end
