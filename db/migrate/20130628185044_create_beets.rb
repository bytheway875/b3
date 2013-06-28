class CreateBeets < ActiveRecord::Migration
  def change
    create_table :beets do |t|
      t.string :name
      t.string :color
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
