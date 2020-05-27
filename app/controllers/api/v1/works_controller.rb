class Api::V1::WorksController < ApplicationController
    before_action :set_artist

    def index
        @works = @artist.works
        render json: @works
    end

    def show
        @work = Work.find(params[:id])
        render json: @work
    end

    def create
        @work = @artist.works.new(work_params)
        if @work.save
            render json: @work
        else
            render json: {error: 'Work not created'}
        end
    end

    def destroy
        
    end
    
    private

    def set_artist
        @artist = Artist.find(params[:artist_id])
    end

    def work_params
        params.require(:work).permit(:artist_id, :image_url, :title, :date, :media, :description)
    end


end
