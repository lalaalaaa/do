class CreateGoalTasks < ActiveRecord::Migration
  def change
    create_table :goal_tasks do |t|
      t.integer :goal_id
      t.integer :task_id
      t.timestamps
    end
  end
end
