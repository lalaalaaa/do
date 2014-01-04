class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :body
      t.datetime :due_date
      t.datetime :created_at
      t.datetime :updated_at
      t.references :parent_goal, index: true
      t.boolean :is_repeating
      t.integer :frequency

      t.timestamps
    end
  end
end
