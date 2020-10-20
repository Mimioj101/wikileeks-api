require 'rest-client'

class Api::V1::WikisController < ApplicationController

    def index
        wikis = Wiki.all 
        render json: wikis
    end

    def show
        wiki = Wiki.find(params[:id])
        render json: wiki
    end

    def wikiarticles
        url = "https://en.wikipedia.org/w/api.php?action=query&list=search&srlimit=30&srsearch=#{params[:search]}&utf8=&format=json"
        response = RestClient.get(url)
        data = JSON.parse(response.body)
        render json: data
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
        wiki = Wiki.find(params[:id])
        wiki.delete
    end

    private
    def wiki_params
        params.require(:wiki).permit(:page_id, :page_title, :snippet, :img, :cat_title, :cat_id)
    end

end
