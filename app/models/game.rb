class Game < ApplicationRecord
    has_many :game_users
    accepts_nested_attributes_for :game_users

    validates :game_users, presence: true

    validates_presence_of :name, :start_date, :end_date
    # validates that the objects in the associated collection are themselves valid
    validates_associated :game_users
end
