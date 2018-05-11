class AddCollageIdToExperiment < ActiveRecord::Migration[5.1]
  def change
    add_column :experiments, :collage_id, :integer
  end
end
