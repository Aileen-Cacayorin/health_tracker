class CreateFoodsLogsTable < ActiveRecord::Migration
  def change
    create_table :foods_logs do |t|
      t.integer :food_id
      t.integer :log_id
    end
  end
end
