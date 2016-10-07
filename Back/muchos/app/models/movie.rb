class Movie < ApplicationRecord
	attr_accessor :tags_ids
	has_many :movie_tags
	has_many :tags, through: :movie_tags

end
