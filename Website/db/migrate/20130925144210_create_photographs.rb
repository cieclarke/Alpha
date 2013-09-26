class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :path
      t.string :filename
      t.string :blurb

      t.timestamps
    end
  end
end
