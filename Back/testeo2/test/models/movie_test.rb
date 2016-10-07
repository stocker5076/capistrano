require 'test_helper'

class MovieTest < ActiveSupport::TestCase

	def setup
		@movie = movies(:one)
	end

  test "deleting rankings on cascade" do
  	@movie.destroy
    assert_empty Ranking.where(movie:@movie.id)
   end

   
end
