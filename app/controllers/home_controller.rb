class HomeController < ApplicationController
    def index
        @artists = Artist.all
        @songs = Song.all
    end

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def edit
    end

    def destroy
        @artist.destroy
        redirect_to home_path

    end

    def update
        if @artist.update(artist_params)
            redirect_to home_path
        else
            render "edit"
        end
    end

    def new
        @artist = Artist.new
    end
        
    def create
        @artist = Artist.new(artist_params)
      
        if @artist.save 
            redirect_to home_path
        else  
            render 'new'
        end
    end
end