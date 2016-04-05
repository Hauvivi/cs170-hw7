class UsersController < ApplicationController
    # GET /users/new
    def new_user
    end
    
    # GET /users
    def show_all_users
        @users = User.all
    end
    
    # GET /users/:id
    def show_user
    end
    
    # GET /users/:id/edit
    def edit_user
    end
    
    # DELETE /users/:id
    def delete_user
    end
    
    #POST /events/create
    def create_user
	@user =User.new {
		first name: params [:first_name],
		last name: params [:last_name],
		email: params [:email],
		password: params [:password]
	}
    if @user.save
	redirect_to show_user_path(@user)
    else
	redirect_to root_path
    end
    end
end