class AddDeadlineToTactic < ActiveRecord::Migration
  def change
    add_column :tactics, :deadline, :date 
  end
end
