class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        set_song
    end

    def edit
       set_song
    end

    def new
        @song = Song.new
    end

    def update
        set_song
        @song.update(song_params)
      if @song.valid?
        redirect_to song_path(@song)
      else
        render :edit
      end
    end

    def create
        @song = Song.create(song_params)
        if @song.valid?
         redirect_to song_path(@song)
        else
            render :new
        end
    end

    def destroy
        set_song
        @song.destroy
        redirect_to songs_path
    end

    private
    def set_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end

end