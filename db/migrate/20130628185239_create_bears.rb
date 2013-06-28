class CreateBears < ActiveRecord::Migration
  def change
    create_table :bears do |t|
      t.string :name
      t.string :color
      t.text :description
      t.string :habitat
      t.string :picture

      t.timestamps
    end
  end
end
