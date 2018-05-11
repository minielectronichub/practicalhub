class RemoveContentFromLabs < ActiveRecord::Migration[5.1]
  def change
    remove_column :labs, :content, :text
  end
end
