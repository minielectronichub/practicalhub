class AddSemIdToExperiment < ActiveRecord::Migration[5.1]
  def change
    add_column :experiments, :sem_id, :integer
  end
end
