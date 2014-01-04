class Task < ActiveRecord::Base
	has_many :goal_tasks
  has_many :goals, :through => :goal_tasks
	validates :title, presence: true,
		length: { minimum: 5 }
end
