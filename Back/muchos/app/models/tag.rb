class Tag < ApplicationRecord
	validates :title, uniqueness: true
	has_many :movies_tags
	has_many :movies, through: :movie_tags
end
 