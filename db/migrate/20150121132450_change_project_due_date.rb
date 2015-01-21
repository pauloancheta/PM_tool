class ChangeProjectDueDate < ActiveRecord::Migration
  def change
    change_column :projects, :due_date, :date
  end
end
