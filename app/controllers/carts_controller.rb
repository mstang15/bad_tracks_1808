class CartsController < ApplicationController
  def create
    song = Song.find(params[:song_id])
    flash[:notice] = "You now have 1 copy of #{song.title} in your cart."
    redirect_to songs_path
  end
end
