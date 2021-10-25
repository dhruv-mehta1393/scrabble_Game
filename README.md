Description
A scrabble club requires a system to store members’ information and provide leader boards to show their top performing players.

For members we would want to store information such as the date they joined the club and their contact details.

All recorded scrabble games are head to head matches between 2 players, the player with the highest score at the end of the game wins.

Requirements
This demo currently works with:

Rails 6.1.x
SqlLite3
If you need help setting up a Ruby development environment, check out these Rails OS X Setup Guide.

Installation
To make this run on your system, follow below steps:

Clone the repository
git clone https://github.com/dhruv-mehta1393/scrabble_game.git
Check your Ruby version
ruby -v
The ouput should start with something like ruby 3.0.0 If not, install the right ruby version using rvm (it could take a while)

Install dependencies
bundle install
Initialize the database
rails db:create db:migrate db:seed
run application
rails s
What does it do?
The demo will perform the following steps:

Create new player
Create new game with players
Generate leader board for games
What is included?
Database schema definition (create table statements) of demo
A member’s profile screen showing their
number of wins
number of losses
their average score
their highest score, when and where it was scored, and against whom
Interfaces to create and edit members’ details, such as name, contact number etc.
A leader board screen to list the members with the top 10 average scores, for those members who have played at least 10 matches.
Database Schema

Database tables used as below

create_table "game_users", force: :cascade do |t|
    t.float "score"
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_users_on_game_id"
    t.index ["user_id"], name: "index_game_users_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "contact_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "game_users", "games"
  add_foreign_key "game_users", "users"
