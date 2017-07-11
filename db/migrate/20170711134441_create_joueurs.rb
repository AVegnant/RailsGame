class CreateJoueurs < ActiveRecord::Migration
  def change
    create_table :joueurs do |t|
	  t.string :title
	  t.string :url

      t.timestamps
    end
  end
end
