class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :todos
      t.references :todo_lists
      t.timestamps
    end
  end
end
