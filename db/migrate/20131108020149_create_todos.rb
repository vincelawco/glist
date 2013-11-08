class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :subject
      t.references :todo_list
      t.references :user
      t.timestamps
    end
  end
end
