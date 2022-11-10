# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :artist_id, uniqueness: { scope: :title, message: "A single artist cannot have two artworks with the same title."}
    validates :title, :image_url, :artist_id, presence: true 


    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User 

    has_many :artwork_sharing,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare,
        dependent: :destroy 

    has_many :shared_viewers,
        through: :artwork_sharing,
        source: :viewer
        
    def self.artworks_for_artist_id(artist_id)
        #retrives all the artworks and shared artworks for a given a user 
        Artwork
            .select('*') 
            .left_outer_joins(:shared_viewers)
            .where('artworks.artist_id = (?)', artist_id)
    end 


end
