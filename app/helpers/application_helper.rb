module ApplicationHelper

  def followed(user)
    @follow = Follow.find_by(follower_id: current_user.id, followee_id: user.id)
    @follow == nil ? false : true
  end

  def favorited(rant)
    @favorite = Favorite.find_by(user_id: current_user.id, rant_id: rant.id)

  end

end
