class Category < ActiveRecord::Base
	has_many :category_goals
  has_many :goals, :through => :category_goals
  validates :title, presence: true,
		length: { minimum: 5 }
end
