class GameUser < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates_presence_of :score
end
