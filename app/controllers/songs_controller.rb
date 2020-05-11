class SongsController < ApplicationController

    def new

    end

    def edit

    end

    def create

    end

    def update

    end

    def destroy

    end

    def show

    end


    private

    def find_song
        Song.find(params[:id])
    end

    def song_params
        # require method and the permit
    end


end
