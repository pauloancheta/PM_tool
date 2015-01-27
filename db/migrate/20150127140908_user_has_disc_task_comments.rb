class UserHasDiscTaskComments < ActiveRecord::Migration
  def change
    add_column :discussions, :user_id, :integer
    add_index :discussions, :user_id

    add_column :tasks, :user_id, :integer
    add_index :tasks, :user_id

    add_column :comments, :user_id, :integer
    add_index :comments, :user_id
  end
end
