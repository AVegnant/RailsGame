class Game < ActiveRecord::Base
  attr_accessible :description, :name, :platform, :tournament_id
  
  has_many :gamings
  has_many :tournaments, through: :gamings
end
