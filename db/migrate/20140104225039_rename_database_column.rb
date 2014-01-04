class RenameDatabaseColumn < ActiveRecord::Migration

	def self.up
		rename_column :tasks, :dueDate, :due_date
		rename_column :tasks, :text, :body
		remove_column :tasks, :points
		remove_column :tasks, :isRecurring
	end

	def self.down
		rename_column :tasks, :dueDate, :due_date
		rename_column :tasks, :text, :body
		remove_column :tasks, :points
		remove_column :tasks, :isRecurring
	end
end
