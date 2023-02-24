class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def show
  @lists = List.new
  end

  def edit
  end

  #def new
  #  @list = List.new
  #  @list = Lists.find(:list_id)
  #  @bookmark = Bookmark.new
#
  #end
#
  #def create
  #  @list = List.find(params[:bookmark])
  #  @bookmark = List.find(params[:list_id])
  #  @bookmark = Bookmark.new(bookmarks_params)
  #  raise
  #  if @bookmark.save
  #    redirect_to list_path(@list)
  #  else
  #    redirect_to list_path(@list)
  #  end
  #end

  def destroy
    @bookmark.destroy
    render :new, status: :unprocessable_entity
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit(:movie_id)
  end

end
