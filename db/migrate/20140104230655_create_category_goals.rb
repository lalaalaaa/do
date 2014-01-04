class CreateCategoryGoals < ActiveRecord::Migration
  def change
    create_table :category_goals do |t|
    	t.integer :category_id
    	t.integer :goal_id
      t.timestamps
    end
  end
end
