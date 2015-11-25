class Meetup < ActiveRecord::Base
  has_many :events
  has_and_belongs_to_many :players
end
