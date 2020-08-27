class AddColumnToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :name, :string
    add_column :plans, :desription, :text
    add_column :plans, :deadline, :date
  end
end
