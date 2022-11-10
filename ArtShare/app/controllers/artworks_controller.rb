class ArtworksController < ApplicationController

        def index 
            artworks = Artwork.all 
            render json: artworks
        end 

        def create 
            artwork = Artwork.new(artwork_params)
            # replace the `artwork_attributes_here` with the actual attribute keys
            if artwork.save
                render json: artwork
            else 
                render json: artwork.errors.full_messages, status: 422
            end 
        end 

        def show 
            artwork = Artwork.find_by(id: params[:id])
            if artwork
                render json: artwork
            else
                redirect_to artworks_url
            end
            
        end 

        def update
            artwork = Artwork.find_by(id: params[:id])

            if artwork.update(artwork_params)
                render json: artwork
            else
                render json: artwork.errors.full_messages, status: 422
            end
        end

        def destroy
            
            artwork = Artwork.find(params[:id])
         
            artwork.destroy
            render json: artwork
        
        end



        private

        def artwork_params
            params.require(:artwork).permit(:title,:image_url, :artist_id)
        end

end