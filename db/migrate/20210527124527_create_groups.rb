class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :icon

      t.timestamps
    end
  end
end
