class WelcomeController < ApplicationController
  def index
    @users = User.all
    if user_signed_in?
      @users_thing = User.all.where(user_id: current_user.id)
    end
  end
end
