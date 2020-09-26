class AddAnotherColumnToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :deadline, :deadline
  end
end
