class AddCategoryAndStatus < ActiveRecord::Migration
  def change
    add_column :projects, :category, :string
    add_column :projects, :status, :boolean
  end
end
