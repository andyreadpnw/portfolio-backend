class MessagesController < ApplicationController

    def index
        render :json => Message.all
    end 

    def show
        render :json => Message.find(params[:id])
    end

    def create
        message = Message.new
        if message.save
            render json: message
        else
            render json: { error: 'message exists, no save!' }
        end
    end

    def destroy
        @message = Message.find(params[:id])
        @message.destroy
    end
end
