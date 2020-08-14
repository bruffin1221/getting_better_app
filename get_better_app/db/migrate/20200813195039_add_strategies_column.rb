class AddStrategiesColumn < ActiveRecord::Migration
  def change
    add_column :strategies, :routine, :text
    add_column :strategies, :deadline, :date
  end
end
