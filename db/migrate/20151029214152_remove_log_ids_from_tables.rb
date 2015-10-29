class RemoveLogIdsFromTables < ActiveRecord::Migration
  def change
    remove_column :exercises, :log_id
    remove_column :foods, :log_id
  end
end
