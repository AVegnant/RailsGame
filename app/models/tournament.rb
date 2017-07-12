class Tournament < ActiveRecord::Base
  attr_accessible :address, :day, :name, :nb_players_max, :rules, :time_tournament_end, :time_tournament_start
  
  has_many :gamings
  has_many :games, through: :gamings
end
