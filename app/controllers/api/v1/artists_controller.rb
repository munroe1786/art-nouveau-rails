class Api::V1::ArtistsController < ApplicationController

    def index
        @artists = Artist.all
        render json: @artists
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save
            render json: @artist
        else
            render json: {error: 'Error creating artist'}
        end
    end

    def show

    end

    def destroy

    end
    
    private

    def artist_params
        params.require(:artist).permit(:name, :date_of_birth, :date_of_death, :years_active, :nationality)
    end


end
