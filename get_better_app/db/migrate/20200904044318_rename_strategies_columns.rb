class RenameStrategiesColumns < ActiveRecord::Migration
  def change
    rename_column :strategies, :objective_1_id, :objective1_id
    rename_column :strategies, :objective_2_id, :objective2_id
    rename_column :strategies, :objective_3_id, :objective3_id
    rename_column :strategies, :objective_4_id, :objective4_id
  end
end
