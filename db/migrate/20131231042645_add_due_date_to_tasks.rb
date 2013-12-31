class AddDueDateToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :dueDate, :datetime
  end
end
