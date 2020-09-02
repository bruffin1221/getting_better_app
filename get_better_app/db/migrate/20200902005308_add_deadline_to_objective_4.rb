class AddDeadlineToObjective4 < ActiveRecord::Migration
  def change
    add_column :objective_4s, :deadline, :date 
  end
end
