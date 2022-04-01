class ClientsController < ApplicationController
    def index 
        render json: Client.all
    end

    def show 
        client = Client.find_by(id: params[:id])
        if client
            render json: client
        else
            byebug
           client = Client.find_by(id: params[:id])
            render json: {error: client.error.full_messages}, status: :not_found
        end
    end
end
