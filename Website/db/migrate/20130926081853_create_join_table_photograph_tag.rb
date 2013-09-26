class CreateJoinTablePhotographTag < ActiveRecord::Migration
  def change
    create_join_table :photographs, :tags do |t|
      # t.index [:photograph_id, :tag_id]
      # t.index [:tag_id, :photograph_id]
    end
  end
end
