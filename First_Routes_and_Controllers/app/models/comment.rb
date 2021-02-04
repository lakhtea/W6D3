class Comment < ApplicationRecord

    belongs_to :author,
    dependent: :destroy,
    foreign_key: :commenter_id,
    class_name: :User

    belongs_to :artwork,
    dependent: :destroy,
    foreign_key: :artwork_id,
    class_name: :Artwork
end