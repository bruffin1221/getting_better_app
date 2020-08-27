class ChangeColumnInPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :decription
    add_column :plans, :description, :text
  end
end
