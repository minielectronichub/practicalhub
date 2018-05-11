class AddUserIdToExperiments < ActiveRecord::Migration[5.1]
  def change
    add_column :experiments, :user_id, :integer
  end
end
