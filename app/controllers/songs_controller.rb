class SongsController < ApplicationController
    
   before_action :set_song, only:[:edit, :destroy, :update]
    
    def set_song
        @song = Song.find(params[:id])
    end
    
    def edit
    end

    def destroy
        @song.destroy
        redirect_to home_path
    end

    def update
        if @song.update(songs_params)
            redirect_to songs_path
        else
            render "edit"
        end
    end
    
    def new
        @song = Song.new
    end
        
    def create
        @song = Song.new(songs_params)
            if @song.save 
                redirect_to songs_path
            else  
                render 'new'
            end
    end
            
    def songs_params
        params.require(:song).permit(:name, :dor,:artistname, :profile_image)
    end

    def index
        @songs = Song.all
        
    end    
end
