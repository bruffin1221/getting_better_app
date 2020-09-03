class Objective3Name < ActiveRecord::Migration
  def change
    rename_table :objective_3s, :objectives
  end
end
