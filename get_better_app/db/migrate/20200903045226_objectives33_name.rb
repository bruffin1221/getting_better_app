class Objectives33Name < ActiveRecord::Migration
  def change
    rename_table :objective3, :objective3s
  end
end
