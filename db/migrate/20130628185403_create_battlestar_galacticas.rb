class CreateBattlestarGalacticas < ActiveRecord::Migration
  def change
    create_table :battlestar_galacticas do |t|
      t.string :actor
      t.string :character
      t.string :quote

      t.timestamps
    end
  end
end
