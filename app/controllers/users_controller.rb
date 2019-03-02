class UsersController < ApplicationController
    def index
        @users = User.all
        render("users/index.html.erb")
    end
    
    # Route >> users/:user_id
    def show
        @user = User.find(params.fetch("user_id"))
        # @user = current_user
        render("users/show.html.erb")
    end
    
    def my_likes
        @user = current_user
        render("/users/show_my_likes.html.erb")
    end
end
