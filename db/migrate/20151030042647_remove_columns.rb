class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :foods, :log_id
    remove_column :exercises, :log_id
  end
end
