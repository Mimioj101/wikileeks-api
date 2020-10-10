class Api::V1::FoldersController < ApplicationController
    def index
        folder = Folder.all 
        render json: folder
    end

    def show
        folder = Folder.find(params[:id])
        render json: folder
    end

    def destroy
        folder = Folder.find(params[:id])
        folder.delete
    end

    def update
        folder = Folder.find(params[:id])
        folder.update(folder_params)
    end
    
    def create
        folder = Folder.create(folder_params)
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
