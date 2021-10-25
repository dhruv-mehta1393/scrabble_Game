class User < ApplicationRecord
    has_many :game_users
    validates_presence_of :username, :email
end
