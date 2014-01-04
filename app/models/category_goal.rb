class CategoryGoal < ActiveRecord::Base
	:belongs_to :categories
  :belongs_to :goals
end
