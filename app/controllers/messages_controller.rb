class MessagesController < ApplicationController
    before_action :set_message, only: [:show]
    
    def index
        
    end
    
    def create
        
    end
    
    def show
        
    end
    
    private
    
        def set_message
            @msg = Msg.find(params[:id]) 
        end
end
