class AddPlanidToTactics < ActiveRecord::Migration
  def change
    add_column :tactics, :plan_id, :integer
  end
end
