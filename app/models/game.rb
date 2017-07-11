class Game < ActiveRecord::Base
  attr_accessible :description, :name, :platform, :tournament_id
end
