class AddPublishedFieldToExperiments < ActiveRecord::Migration[5.1]
  def change
    add_column :experiments, :published, :boolean, default: false
  end
end
