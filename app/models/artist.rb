class Artist < ApplicationRecord
    has_many :works
    validates :name, :date_of_birth, :date_of_death, :years_active, :nationality, presence: true
end
