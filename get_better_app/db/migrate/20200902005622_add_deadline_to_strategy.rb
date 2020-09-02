class AddDeadlineToStrategy < ActiveRecord::Migration
  def change
    add_column :strategies, :deadline, :date 
  end
end
