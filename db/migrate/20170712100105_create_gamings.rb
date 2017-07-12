class CreateGamings < ActiveRecord::Migration
  def change
    create_table :gamings do |t|
      t.references :game
      t.references :tournament

      t.timestamps
    end
    add_index :gamings, :game_id
    add_index :gamings, :tournament_id
  end
end
