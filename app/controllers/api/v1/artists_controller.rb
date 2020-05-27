class Api::V1::ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :update, :destroy]

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
        @artist = Artist.find(params[:id])
        render json: @artist
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
    end
    
    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :date_of_birth, :date_of_death, :years_active, :nationality)
    end


end
