class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.column :user_id, :integer
      t.column :date, :datetime

      t.timestamps null: false
    end
  end
end
