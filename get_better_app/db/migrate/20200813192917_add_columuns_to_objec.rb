class AddColumunsToObjec < ActiveRecord::Migration
  def change
    add_column :objectives, :name, :string
    add_column :objectives, :description, :text
    add_column :objectives, :deadline, :date
  end
end
