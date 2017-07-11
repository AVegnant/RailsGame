class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.date :day
      t.string :time_tournament_start
      t.string :time_tournament_end
      t.string :address
      t.string :rules
      t.integer :nb_players_max
      t.string :name

      t.timestamps
    end
  end
end
