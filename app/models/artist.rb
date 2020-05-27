class Artist < ApplicationRecord
    has_many :works
    validates :name, :date_of_birth, :date_of_death, :active_years, :nationality, presence: true
end
