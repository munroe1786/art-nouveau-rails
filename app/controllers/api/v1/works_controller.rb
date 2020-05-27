class Api::V1::WorksController < ApplicationController
    before_action :set_artist

    def index
        @works = @artist.works
        render json: @works
    end

    def create
        @work = Work.new(work_params)
        if @work.save
            render json: @work
        else
            render json: {error: 'Error creating work'}
        end
    end

    def show
        @work = work.find(params[:id])
        render json: @work
    end

    def destroy
        @work = work.find(params[:id])
        @work.destroy
    end
    
    private

    def set_artist
        @artist = Artist.find(params[:artist_id])
    end

    def work_params
        params.require(:work).permit(:artist_id, :image_url, :title, :date, :media, :description)
    end


end
