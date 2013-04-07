class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :category
      t.string :title

      t.timestamps
    end
    add_index :topics, :category_id
  end
end
