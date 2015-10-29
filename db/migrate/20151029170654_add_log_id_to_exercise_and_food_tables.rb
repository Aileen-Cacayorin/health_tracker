class AddLogIdToExerciseAndFoodTables < ActiveRecord::Migration
  def change
    add_column :exercises, :log_id, :integer
    add_column :foods, :log_id, :integer
  end
end
