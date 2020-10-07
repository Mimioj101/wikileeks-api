class Api::V1::FoldersController < ApplicationController
    def index
        folder = folder.all 
        render json: folder
    end

    def show
        folder = folder.find(params[:id])
        render json: folder
    end

    def destroy
        folder = folder.find(params[:id])
        folder.delete
    end

    def update
        folder = folder.find(params[:id])
        folder.update(folder_params)
    end
    
    def create
        folder = folder.create(folder_params)
        if folder.valid?
            render json: {folder: FolderSerializer.new(folder) }, status: :created
        else
            render json: { error: 'failed to create folder' }, status: :not_acceptable
        end
    end

    private
    def folder_params
        params.require(:folder).permit(:user_id, :name)
    end

end
