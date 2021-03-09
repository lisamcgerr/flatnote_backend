class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        user = User.find_by(id:params[:id])
        render json: user
    end
    
    def create
        user = User.create(user_param)
        render json: user
    end
    
    def update
        user = User.find(params[:id])
        user.update_attributes(user_param)
        render json: user
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content, status: :ok
    end
      
      private
    def user_param
        params.require(:user).permit(:username, :email, :full_name, :image_url)
    end


end
