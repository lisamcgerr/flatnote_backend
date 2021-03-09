class GoalsController < ApplicationController
    def index
        render json: Goal.all
    end

    def show
        goal = Goal.find_by(id:params[:id])
        render json: goal
    end

    def create
        goal = Goal.create(goal_param)
        render json: goal
    end
    
    def update
        goal = Goal.find(params[:id])
        goal.update_attributes(goal_param)
        render json: goal
    end
    
    def destroy
        goal = Goal.find(params[:id])
        goal.destroy
        head :no_content, status: :ok
    end
      
      private
    def goal_param
        params.require(:goal).permit(:category, :description, :completion_date, :user_id)
    end
end
