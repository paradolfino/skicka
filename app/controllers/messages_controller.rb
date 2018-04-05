class MessagesController < ApplicationController
    before_action :set_message, only: [:show]
    
    def index
        @message = Message.new
        @messages = Message.all
    end
    
    def create
        @message = Message.new(msg_params)
        if @message.save
           redirect_to root_path
        else
            redirect_to root_path
        end
    end
    
    def show; end
    
    private
    
        def set_message
            @message = Message.find(params[:id]) 
        end
        
        def msg_params
           params.require(:message).permit(:content) 
        end
end
