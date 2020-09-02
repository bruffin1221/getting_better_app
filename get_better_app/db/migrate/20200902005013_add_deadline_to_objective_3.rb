class AddDeadlineToObjective3 < ActiveRecord::Migration
  def change
    add_column :objective_3s, :deadline, :date 
  end
end
