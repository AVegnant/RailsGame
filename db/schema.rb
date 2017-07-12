# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20170712100105) do

  create_table "games", :force => true do |t|
    t.string   "description"
    t.string   "platform"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gamings", :force => true do |t|
    t.integer  "game_id"
    t.integer  "tournament_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "gamings", ["game_id"], :name => "index_gamings_on_game_id"
  add_index "gamings", ["tournament_id"], :name => "index_gamings_on_tournament_id"

  create_table "tournaments", :force => true do |t|
    t.date     "day"
    t.string   "time_tournament_start"
    t.string   "time_tournament_end"
    t.string   "address"
    t.string   "rules"
    t.integer  "nb_players_max"
    t.string   "name"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
