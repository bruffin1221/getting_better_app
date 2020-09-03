class ChangeToObjective1Name < ActiveRecord::Migration
  def change
    rename_table :objective_1s, :objective1s
  end
end
