class GymsController < ApplicationController
    before_action :set_gym, only: [:show, :destroy]
  
    def show
      render json: @gym
    end
  
    def create
      @gym = Gym.new(gym_params)
  
      if @gym.save
        render json: @gym, status: :created
      else
        render json: @gym.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      if @gym.destroy
        head :no_content
      else
        render json: { error: 'Gym not found' }, status: :not_found
      end
    end
  
    private
  
    def set_gym
      @gym = Gym.find(params[:id])
    end
  
    def gym_params
      params.require(:gym).permit(:name, :address)
    end
  end
  