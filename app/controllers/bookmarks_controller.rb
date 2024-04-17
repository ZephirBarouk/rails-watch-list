class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(list_params)
    @Bookmark.save
    redirect_to lists_path
  end

  private

  def bookmark_params
    params.require(:list).permit(:name)
  end
end
