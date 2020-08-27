class RemoveColumnsPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :desription
  end
end
