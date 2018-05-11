class AddSemIdToLabs < ActiveRecord::Migration[5.1]
  def change
    add_column :labs, :sem_id, :integer
  end
end
