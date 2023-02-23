class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    if @bookmark.save!
      redirect_to bookmarks_path
    else
      render :new, status: :unprocessable_entity
    end
  end

end
