class Api::V1::BookmarksController < ApplicationController
    def index
        bookmarks = bookmark.all 
        render json: bookmarks
    end

    def show
        bookmark = bookmark.find(params[:id])
        render json: bookmark
    end

    def destroy
        bookmark = bookmark.find(params[:id])
        bookmark.delete
    end


    def create
        bookmark = Bookmark.create(bookmark_params)
        if bookmark.valid?
            render json: { bookmark: BookmarkSerializer.new(bookmark) }, status: :created
        else
            render json: { error: 'failed to create bookmark' }, status: :not_acceptable
        end
    end

    private
    def bookmark_params
        params.require(:bookmark).permit(:user_id, :wiki_id)
    end

end
