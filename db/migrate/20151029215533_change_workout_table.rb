class ChangeWorkoutTable < ActiveRecord::Migration
  def change
    rename_column :workouts, :workout_id, :exercise_id
  end
end
