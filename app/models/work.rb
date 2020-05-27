class Work < ApplicationRecord
    belongs_to :artist
    validates :image_url, :title, :date, :media, :description, presence: true
end
