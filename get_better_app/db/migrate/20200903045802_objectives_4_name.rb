class Objectives4Name < ActiveRecord::Migration
  def change
    rename_table :objective_4s, :objective4s
  end
end
