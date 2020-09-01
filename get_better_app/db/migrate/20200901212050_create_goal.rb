class CreateGoal < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.text :description
    end
  end
end
