class Goal < ActiveRecord::Base
  has_many :goal_tasks
  has_many :tasks, :through => :goal_tasks
  has_many :category_goals
  has_many :categories, :through => :category_goals
  validates :title, presence: true,
		length: { minimum: 5 }
end
