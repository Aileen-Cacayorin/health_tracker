class FixTables < ActiveRecord::Migration
  def change
    add_column :foods_logs, :log_id, :integer
    rename_column :exercises_logs, :exericse_id, :exercise_id
  end
end
