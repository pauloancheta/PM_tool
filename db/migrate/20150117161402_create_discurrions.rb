class CreateDiscurrions < ActiveRecord::Migration
  def change
    create_table :discurrions do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
