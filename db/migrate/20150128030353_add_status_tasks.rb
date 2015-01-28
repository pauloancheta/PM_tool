class AddStatusTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :status, :boolean
    remove_column :projects, :status
  end
end
