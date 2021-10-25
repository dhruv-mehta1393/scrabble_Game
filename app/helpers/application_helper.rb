module ApplicationHelper

    def game_winner(first_user, second_user)
        if first_user.score > second_user.score
            return first_user
        else
            return second_user
        end
    end
end
