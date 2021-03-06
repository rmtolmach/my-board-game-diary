# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Game info
# t.string   "name"
# t.float    "time_to_play"
# t.string   "genre"
# t.integer  "min_players"
# t.integer  "max_players"

games = [
  { name: "The Settlers of Catan",  time_to_play: 1.5,  genre: "strategy",    min_players: 3, max_players: 4 },
  { name: "Pandemic",               time_to_play: 1.5,  genre: "co-op",       min_players: 2, max_players: 4 },
  { name: "Battlestar Galactica",   time_to_play: 4,    genre: "thematic",    min_players: 3, max_players: 6 },
  { name: "Power Grid",             time_to_play: 2.5,  genre: "strategy",    min_players: 2, max_players: 6 }
]

games.each do |game|
  Game.create(game)
end

# Player info
# t.string   "name"
# t.string   "email"
# t.text     "bio"
# t.integer  "age"
# t.string   "gender"

players = [
  { name: "Jenna",    email: "jennaplusplus@gmail.com",     bio: "Ada Dev Student",   age: 26, gender: "female",  city: "Seattle", state: "WA" },
  { name: "Ross",     email: "ross.nichols@live.com",       bio: "Microsoftie",       age: 26, gender: "male",    city: "Seattle", state: "WA" },
  { name: "Mallory",  email: "mallory.mcmanamon@gmail.com", bio: "Amazonian",         age: 28, gender: "female",  city: "Seattle", state: "WA" },
  { name: "Eric",     email: "eric@huskers.unl.edu",        bio: "UT Pythonista",     age: 28, gender: "male",    city: "Seattle", state: "WA" }
]

players.each do |player|
  Player.create(player)
end

# Meetup info
# t.date     "date"
# t.float    "duration"
# t.string   "location"

meetups = [
  { name: "New Year's Party",   date: "2015-01-01", duration: 3,    location: "Jenna's house" },
  { name: "Groundhog Day",      date: "2015-02-02", duration: 6,    location: "Mallory's house" },
  { name: "Ada Game Night",     date: "2015-10-03", duration: 1.5,  location: "Ada Dev Academy" },
]

meetups.each do |meetup|
  Meetup.create(meetup)
end

# Event info
# t.float    "duration"
# t.text     "notes"
# t.text     "outcome"
# t.integer  "game_id"
# t.integer  "meetup_id"
# t.float    "rating"

events = [
  {meetup_id: 1, game_id: 1, rating: 1},
  {meetup_id: 1, game_id: 1, rating: 3},
  {meetup_id: 1, game_id: 1, rating: 5},
  {meetup_id: 1, game_id: 2, rating: 2},
  {meetup_id: 1, game_id: 3, rating: 5},
  {meetup_id: 1, game_id: 3, rating: 4},
]

events.each do |event|
  Event.create(event)
end
