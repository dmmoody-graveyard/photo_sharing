class HomeController < ApplicationController

  def index
    @users = User.all
    @albums = Album.all
  end

end
