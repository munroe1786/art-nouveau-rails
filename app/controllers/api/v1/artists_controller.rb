class Api::V1::ArtistsController < ApplicationController

    def index

    end

    def create

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
