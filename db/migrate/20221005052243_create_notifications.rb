class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :string
      t.integer :user_id

      t.timestamps
    end
  end
end
