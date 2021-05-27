class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(strong_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)

    #add an if and else here for if it saves or not
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list_id)
  end


  private

  def strong_params
    params.require(:bookmark).permit(:comment, :movie_id)  #:list_id
  end

end

