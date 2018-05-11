class RemoveDescriptionFromLabs < ActiveRecord::Migration[5.1]
  def change
    remove_column :labs, :description, :text
  end
end
