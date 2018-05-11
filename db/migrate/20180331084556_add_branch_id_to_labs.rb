class AddBranchIdToLabs < ActiveRecord::Migration[5.1]
  def change
    add_column :labs, :branch_id, :integer
  end
end
