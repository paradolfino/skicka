class MessagesController < ApplicationController
    before_action :set_message, only: [:show]
    
    def index
        @messages = Message.all
    end
    
    def create
        
    end
    
    def show
        
    end
    
    private
    
        def set_message
            @message = Message.find(params[:id]) 
        end
        
        def msg_params
           params.require(:message).permit(:content) 
        end
end
