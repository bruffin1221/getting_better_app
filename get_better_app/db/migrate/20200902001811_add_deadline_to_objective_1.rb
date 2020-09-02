class AddDeadlineToObjective1 < ActiveRecord::Migration
  def change
    add_column :objective_1s, :deadline, :date 
  end
end
