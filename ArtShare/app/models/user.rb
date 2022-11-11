# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true 

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy,
        inverse_of: :artist

    has_many :viewed_artworks,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy,
        inverse_of: :viewer
    
    has_many :shared_artworks,
        through: :viewed_artworks,
        source: :artwork_sharing

    has_many :comments,
        foreign_key: :author_id,
        class_name: :Comment,
        dependent: :destroy,
        inverse_of: :author
      

    def self.search(username)
        return nil if username.nil?
        # filter = username.split("").join("%")
        User.select(:id).where("username LIKE (?)", "%#{username}%")
    end
        
end
