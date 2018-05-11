class AddCollageIdToLabs < ActiveRecord::Migration[5.1]
  def change
    add_column :labs, :collage_id, :integer
  end
end
