class Work < ApplicationRecord
    belongs_to :artist
    validates :title, :date, :media, :description, presence: true
end
