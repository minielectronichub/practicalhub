class CreateSems < ActiveRecord::Migration[5.1]
  def change
    create_table :sems do |t|
      t.string :name

      t.timestamps
    end
  end
end
