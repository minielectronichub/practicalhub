class CreateCollages < ActiveRecord::Migration[5.1]
  def change
    create_table :collages do |t|
      t.string :name

      t.timestamps
    end
  end
end
