class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.column :name, :string
      t.column :duration, :string
      t.column :calories, :integer
      t.timestamps null: false
    end
  end
end
