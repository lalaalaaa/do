class GoalTask < ActiveRecord::Base
	:belongs_to :goals
  :belongs_to :tasks
end
