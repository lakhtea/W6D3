class ArtworksController < ApplicationController 
    def index
      user = User.find(params[:user_id])
      render json: all_artworks(user)
    end
  
  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update 
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
        redirect_to artwork_url(artwork)
    else
        render json: artwork.errors.full_message, status: :unprocessable_entity
    end
  end

  def destroy
  artwork = Artwork.find(params[:id])
  artwork.destroy
  render json: artwork
#   redirect_to Artwork_url
  end
  private

  def artwork_params
        params.require(:artwork).permit(:title)
    end

    def all_artworks(user)
      { all_artworks: { my_artworks: user.artworks, shared_with_me: user.shared_artworks } }
    end
end 
