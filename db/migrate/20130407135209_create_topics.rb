class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.references :category

      t.timestamps
    end
    add_index :topics, :category_id
  end
end
