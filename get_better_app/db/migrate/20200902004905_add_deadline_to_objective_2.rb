class AddDeadlineToObjective2 < ActiveRecord::Migration
  def change
    add_column :objective_2s, :deadline, :date 
  end
end
