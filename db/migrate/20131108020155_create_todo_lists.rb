class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :list_name
      t.references :user
      t.references :todos
      t.timestamps
    end
  end
end
