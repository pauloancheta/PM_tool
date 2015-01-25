class AddAssociations < ActiveRecord::Migration
  def change
    add_column :tasks, :project_id, :integer
    add_index :tasks, :project_id

    add_column :discussions, :project_id, :integer
    add_index :discussions, :project_id

    add_column :comments, :discussion_id, :integer
    add_index :comments, :discussion_id
  end
end

#each project has tasks
#each project has discussions
#each discussion has comments