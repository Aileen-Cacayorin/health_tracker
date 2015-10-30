class CreateExercisesLogsTable < ActiveRecord::Migration
  def change
    create_table :exercises_logs do |t|
      t.integer :exericse_id
      t.integer :log_id
    end
  end
end
