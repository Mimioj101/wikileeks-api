class Api::V1::WikisController < ApplicationController

    def index
        wikis = Wiki.all 
        render json: wikis
    end

    def show
        wiki = wiki.find(params[:id])
        render json: wiki
    end
    
    def create
        wiki = Wiki.create(wiki_params)
        if wiki.valid?
            render json: {wiki: WikiSerializer.new(wiki) }, status: :created
        else
            render json: { error: 'failed to create wiki' }, status: :not_acceptable
        end
    end

    def destroy
        wiki = wiki.find(params[:id])
        wiki.delete
    end

    private
    def wiki_params
        params.require(:wiki).permit(:page_id, :page_title, :snippet, :img, :cat_title, :cat_id)
    end

end
