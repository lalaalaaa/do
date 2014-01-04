class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :body
      t.string :color
      t.string :image
      t.timestamps
    end
  end
end
