class AddIds < ActiveRecord::Migration
  def change
    add_column :tactics, :goal_id, :integer
    add_column :tactics, :objective_id, :integer
    add_column :tactics, :strategy_id, :integer 
  end
end
