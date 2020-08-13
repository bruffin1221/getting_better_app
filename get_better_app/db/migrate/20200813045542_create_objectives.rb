class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|

      t.timestamps null: false
    end
  end
end
