class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end
    
    def show
        user = User.find_by(id: params[:id])
        render json: user
    end
    
    def new
    @user = User.new
    @users = User.new(id: params[:id])
    end
    
    def create
    
    @user = User.new(user_params)
    if 
    @user.save
    redirect_to user_path(@user)
    else 
       render :new
    end
    end
    
    def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@users)
    end
    
    def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
    end
    
    
    private
    
    def set_user
    @user = User.find(params[:id])
    end
    
    def user_params
    params.require(:user).permit(:username, :password_digest, :bio, :image => []) 
    
    end
    
    
    
end
