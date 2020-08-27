class AddPlanidToStrategies < ActiveRecord::Migration
  def change
    add_column :strategies, :plan_id, :integer
  end
end
