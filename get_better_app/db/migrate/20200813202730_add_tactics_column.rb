class AddTacticsColumn < ActiveRecord::Migration
  def change
    add_column :tactics, :actions, :text
    add_column :tactics, :deadline, :date
  end
end
