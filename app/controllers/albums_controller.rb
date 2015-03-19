class AlbumsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @album = @user.albums.new
  end

  def create
    @user = User.find(params[:user_id])
    @album = @user.albums.new( album_params )
    if @album.save
      flash[:notice] = "Your photo was added!"
      redirect_to user_albums_path
    else
      flash[:alert] = "There was a problem uploading your photo.  Please try again."
      redirect_to :back
    end
  end

private
  def album_params
    params.require(:album).permit(:photo)
  end
end
