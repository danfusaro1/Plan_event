class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.date :date
      
      t.timestamps null: false
    end
  end
end
