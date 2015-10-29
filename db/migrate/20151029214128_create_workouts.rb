class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :workout_id
      t.integer :log_id
      t.timestamps null: false
    end
  end
end
