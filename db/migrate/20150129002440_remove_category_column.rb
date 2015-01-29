class RemoveCategoryColumn < ActiveRecord::Migration
  def change
    remove_column :projects, :category
  end
end
