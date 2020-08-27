class AddPlanidToObjectives < ActiveRecord::Migration
  def change
    add_column :objectives, :plan_id, :integer
  end
end
