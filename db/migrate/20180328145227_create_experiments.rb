class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :description
      t.text :components

      t.timestamps
    end
  end
end
