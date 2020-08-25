class AddColumnsToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :goal_id, :integer
    add_column :plans, :objective_id, :integer
    add_column :plans, :strategy_id, :integer 
    add_column :plans, :tactic_id, :integer
  end
end
