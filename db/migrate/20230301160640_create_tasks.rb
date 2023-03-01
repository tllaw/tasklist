class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :owner_id
      t.integer :manager_id
      t.string :status

      t.timestamps
    end

    add_foreign_key(
      :tasks,
      :users,
      column: :owner_id,
    )
    add_foreign_key(
      :tasks,
      :users,
      column: :manager_id,
    )
  end
end
