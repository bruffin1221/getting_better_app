class Objective2Name < ActiveRecord::Migration
  def change
    rename_table :objective_2s, :objective2s
  end
end
