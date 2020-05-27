class WorkSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :title, :date, :media, :description, :artist_id
end
