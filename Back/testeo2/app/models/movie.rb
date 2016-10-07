class Movie < ApplicationRecord
	has_many :ranking, dependent: :destroy
end
