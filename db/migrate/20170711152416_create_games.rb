class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :tournament_id
      t.string :description
      t.string :platform
      t.string :name

      t.timestamps
    end
  end
end
