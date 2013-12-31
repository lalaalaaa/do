class AddIsRecurringToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :isRecurring, :boolean
  end
end
