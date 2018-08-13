class AddActiveAndTitleToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :default => false
    add_column :students, :title, :string
    end
end