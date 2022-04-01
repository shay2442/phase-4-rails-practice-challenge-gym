class MembershipsController < ApplicationController
    def index
        render json: Membership.all
    end

    def create
        member = Membership.create(membership_params)
        if !member.errors
           
            render json: member
        else 
    
            render json: {error: member.errors.full_messages }, status: :not_found
        end
    end

        private

        def membership_params
            params.require(:membership).permit(:gym_id, :client_id, :charge)
        end




end
