class Song < ApplicationRecord
    has_one_attached :profile_image

    has_and_belongs_to_many :artist
end
