class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_of_birth, :date_of_death, :years_active, :nationality
  has_many :works
end
