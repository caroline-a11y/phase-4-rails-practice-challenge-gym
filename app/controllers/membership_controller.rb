class MembershipsController < ApplicationController
    def create
      @gym = Gym.find(params[:gym_id])
      @client = Client.find(params[:client_id])
      @membership = Membership.new(gym: @gym, client: @client, charge: params[:charge])
  
      if @membership.save
        render json: @membership, status: :created
      else
        render json: @membership.errors, status: :unprocessable_entity
      end
    end
  end
  