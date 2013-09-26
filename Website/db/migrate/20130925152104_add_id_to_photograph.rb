class AddIdToPhotograph < ActiveRecord::Migration
  def change
    add_column :photographs, :photograph_id, :integer
  end
end
