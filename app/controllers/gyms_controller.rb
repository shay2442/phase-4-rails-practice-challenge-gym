class GymsController < ApplicationController

    def index
        gyms = Gym.all
        render json: gyms, :except => [:created_at, :updated_at], methods: [:summary]
    end

    def show 
        gym = Gym.find_by(:id => params[:id])
        if gym
            render json: gym
        else 
            render json: { message: "Gym not found" }, status: :not_found
        end
    end

    def update 
        gym = Gym.find_by(id: params[:id])
        if gym
            render json: gym.update(gym_params)
        else
            
            render json: { error: gym.error.full_messages }, status: :not_found

        end
    end

    def destroy
        gym = Gym.find_by(:id => params[:id])
        if gym
            render json: gym.destroy
            head :no_content
        else
            render json: { error: "Gym not found" }, status: :not_found
        end
        
    end

    private 
    def gym_params
        params.permit(:name, :address)
    end





end
